from django.shortcuts import render
from .models import ChatMessage

def chat(request):
    if request.method == 'POST':
        user_message = request.POST.get('text', '')
        # Aquí puedes implementar la lógica de tu chatbot para obtener la respuesta
        # y guardar el mensaje del usuario en la base de datos
        # Ejemplo: respuesta = obtener_respuesta_del_chatbot(user_message)
        # ChatMessage.objects.create(text=user_message)
        # ChatMessage.objects.create(text=respuesta)

    messages = ChatMessage.objects.all()
    return render(request, 'chat.html', {'messages': messages})
