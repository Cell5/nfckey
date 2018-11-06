from django.shortcuts import render, redirect


def home(request):
    return render(request, 'core/home.html')


def description(request):
    return render(request, 'core/description.html')


def control_panel(request):
    return render(request, 'core/control_panel.html')


def profile(request):
    return render(request, 'core/profile.html')
