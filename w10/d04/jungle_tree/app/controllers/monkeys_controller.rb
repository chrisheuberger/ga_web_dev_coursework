class MonkeysController < ApplicationController

# monkeys GET    /monkeys(.:format)     monkeys#index
def index
  monkeys = Monkey.all
  render json: monkeys.to_json
end

#         POST   /monkeys(.:format)     monkeys#create
def create
  monkey = Monkey.create(monkey_params)
  render json: monkey.to_json
end

#  monkey GET    /monkeys/:id(.:format) monkeys#show
def show
  monkey = Monkey.find(params[:id])
  render json: monkey.to_json
end

#         PATCH  /monkeys/:id(.:format) monkeys#update
#         PUT    /monkeys/:id(.:format) monkeys#update
def update
  monkey = Monkey.find(params[:id])
  monkey.update(monkey_params)
  render json: monkey.to_json
end

#         DELETE /monkeys/:id(.:format) monkeys#destroy
def destroy
  monkey = Monkey.find(params[:id])
  monkey.destroy
  render json: monkey.to_json
end

private

def monkey_params
  params.require(:monkey).permit(:name)
end

end
