class ImagesController < ApplicationController
    def index
        #@images variable will contain all the Image models
        @images = Image.all
    end

    def show
        #use Image.find to find the image we're interested in, passing params[:id] to get the :id paramter from the request
        @image = Image.find(params[:id])

        #the @image is an instance variable that holds a reference to the image object.  Rails will pass all isntance variables to the view
    end

    def new
        #creates a new instance variable cdalled @image that will be true if the items saved, or falses if it does not
        @image = Image.new
    end

    def edit
        @image = Image.find(params[:id])
        
    end

    def create
        #initializes image model with respective attributes which are automatically mapped to the respective database columns
        @image = Image.new(image_params)

        #saves the model into the database
        if @image.save
            #if the model saves it will return "true", redirect us to the show action
            redirect_to @image
        else
            render 'new'
        end
    end

    def update
        @image = Image.find(params[:id])

        # if @image.update works - then go back to the show_image page, if not, re-render the form 
        if @image.update(image_params)
            redirect_to @image
        else
            render 'edit'
        end
    end

    def destroy
    end


    #creates a private method that can be reused in the same controller
        #private keyboard will make anything below this private! - don't put CRUD operations here.
    private
        def image_params
            #these params are called Strong Parameters because they allow us to whitelist our controller parameters to prevent wrongful assignment or extra parameters be maliciously added
            params.require(:image) .permit(:url,:alt,:caption)
        end
end
