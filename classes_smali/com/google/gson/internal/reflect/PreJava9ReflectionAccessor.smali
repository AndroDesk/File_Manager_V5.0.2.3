.class final Lcom/google/gson/internal/reflect/PreJava9ReflectionAccessor;
.super Lcom/google/gson/internal/reflect/ReflectionAccessor;
.source "PreJava9ReflectionAccessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionAccessor;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public makeAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    return-void
.end method
