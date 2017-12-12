class ImagesController < ApplicationController
    def index
    end

    def show
        #use Image.find to find the image we're interested in, passing params[:id] to get the :id paramter from the request
        @image = Image.find(params[:id])

        #the @image is an instance variable that holds a reference to the image object.  Rails will pass all isntance variables to the view
    end

    def new
    end

    def edit
    end

    def create
        #initializes image model with respective attributes which are automatically mapped to the respective database columns
        @image = Image.new(images_params)

        #saves the model into the database
        @image.save

        #redirect us to the show action
        redirect_to @image
    end

    def update
    end

    def destroy
    end


    #creates a private method that can be reused in the same controller
        #private keyboard will make anything below this private! - don't put CRUD operations here.
    private
        def images_params
            #these params are called Strong Parameters because they allow us to whitelist our controller parameters to prevent wrongful assignment or extra parameters be maliciously added
            params.require(:image) .permit(:title,:text)
        end
end
