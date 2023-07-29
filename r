from aiogram import Bot,Dispatcher,executor,types
from dotenv import load_dotenv
import os
load_dotenv()




bot = Bot(os.getenv('TOKEN')) # токен бота
dp = Dispatcher(bot=bot)
@dp.message_handler(commands= ['start'])
async def bott(message: types.Message):
    await message.answer(f'{message.from_user.first_name}  Добро пожаловать подождите немного!')  # отвечает за приветствие человека


@dp.message_handler()
async def bott(message: types.Message):
    await message.reply(' повторите команду у нас только команда , start') # ответ на несуществующее сообщение юзера


if __name__ == '__main__': # отвечает за не выключение программы
    executor.start_polling(dp) #запуск
