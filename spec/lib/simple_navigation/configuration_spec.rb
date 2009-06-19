require File.dirname(__FILE__) + '/../../spec_helper'

describe SimpleNavigation::Configuration do
  
  before(:each) do
    @config = SimpleNavigation::Configuration.instance
  end
  
  describe 'self.run' do
    it "should yield the singleton Configuration object" do
      SimpleNavigation::Configuration.run do |c|
        c.should == @config
      end
    end
  end

  describe 'self.eval_config' do
    before(:each) do
      @context = mock(:context)
      @context.stub!(:instance_eval)
      @config_file = stub(:config_file)
      SimpleNavigation.stub!(:config_file).and_return(@config_file)
    end
    it "should instance_eval the config_file-string inside the context" do
      @context.should_receive(:instance_eval).with(@config_file)
      SimpleNavigation::Configuration.eval_config(@context)
    end    
    it "should set the controller" do
      @controller = stub(:controller)
      SimpleNavigation::Configuration.should_receive(:extract_controller_from).with(@context).and_return(@controller)
      SimpleNavigation.should_receive(:controller=).with(@controller)
      SimpleNavigation::Configuration.eval_config(@context)
    end
  end

  describe 'self.extract_controller_from' do
    before(:each) do
      @nav_context = stub(:nav_context)
    end
    
    context 'object responds to controller' do
      before(:each) do
        @controller = stub(:controller)
        @nav_context.stub!(:controller).and_return(@controller)
      end
      
      it "should return the controller" do
        SimpleNavigation::Configuration.extract_controller_from(@nav_context).should == @controller
      end
      
    end
    
    context 'object does not respond to controller' do
      it "should return the nav_context" do
        SimpleNavigation::Configuration.extract_controller_from(@nav_context).should == @nav_context
      end
    end
  end
  
  describe 'initialize' do
    it "should set the List-Renderer as default upon initialize" do
      @config.renderer.should == SimpleNavigation::Renderer::List
    end
    it "should set the selected_class to 'selected' as default" do
      @config.selected_class.should == 'selected'
    end
    it "should set render_all_levels to false as default" do
      @config.render_all_levels.should be_false
    end
    it "should set autogenerate_item_ids to true as default" do
      @config.autogenerate_item_ids.should be_true
    end
  end  
  describe 'items' do
    before(:each) do
      @container = stub(:items_container)
      SimpleNavigation::ItemContainer.stub!(:new).and_return(@container)
    end
    it "should should yield an new ItemContainer" do
      @config.items do |container|
        container.should == @container
      end
    end
    it "should assign the ItemContainer to an instance-var" do
      @config.items {}
      @config.primary_navigation.should == @container
    end
  end

  
end


