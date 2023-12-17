.class public final Landroidx/window/layout/SafeWindowLayoutComponentProvider;
.super Ljava/lang/Object;
.source "SafeWindowLayoutComponentProvider.kt"


# static fields
.field public static final a:Landroidx/window/layout/SafeWindowLayoutComponentProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ly2/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 3
    invoke-direct {v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;-><init>()V

    .line 6
    sput-object v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 8
    sget-object v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;->INSTANCE:Landroidx/window/layout/SafeWindowLayoutComponentProvider$windowLayoutComponent$2;

    .line 10
    invoke-static {v0}, Lkotlin/a;->c(Lh3/a;)Ly2/c;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->b:Ly2/c;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/ClassLoader;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1;

    .line 6
    invoke-direct {p0, p1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1;-><init>(Ljava/lang/ClassLoader;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_9
    invoke-interface {p0}, Lh3/a;->invoke()Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p0
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_13} :catch_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_13} :catch_14

    .line 20
    goto :goto_15

    .line 21
    :catch_14
    move p0, v0

    .line 22
    :goto_15
    if-eqz p0, :cond_51

    .line 24
    new-instance p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;

    .line 26
    invoke-direct {p0, p1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;-><init>(Ljava/lang/ClassLoader;)V

    .line 29
    :try_start_1c
    invoke-interface {p0}, Lh3/a;->invoke()Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Boolean;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result p0
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_26} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_26} :catch_27

    .line 39
    goto :goto_28

    .line 40
    :catch_27
    move p0, v0

    .line 41
    :goto_28
    if-eqz p0, :cond_51

    .line 43
    new-instance p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;

    .line 45
    invoke-direct {p0, p1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;-><init>(Ljava/lang/ClassLoader;)V

    .line 48
    :try_start_2f
    invoke-interface {p0}, Lh3/a;->invoke()Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/Boolean;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    move-result p0
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_39} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2f .. :try_end_39} :catch_3a

    .line 58
    goto :goto_3b

    .line 59
    :catch_3a
    move p0, v0

    .line 60
    :goto_3b
    if-eqz p0, :cond_51

    .line 62
    new-instance p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    .line 64
    invoke-direct {p0, p1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Ljava/lang/ClassLoader;)V

    .line 67
    :try_start_42
    invoke-interface {p0}, Lh3/a;->invoke()Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/lang/Boolean;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    move-result p0
    :try_end_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_42 .. :try_end_4c} :catch_4d

    .line 77
    goto :goto_4e

    .line 78
    :catch_4d
    move p0, v0

    .line 79
    :goto_4e
    if-eqz p0, :cond_51

    .line 81
    const/4 v0, 0x1

    .line 82
    :cond_51
    return v0
.end method

.method public static final b(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 7
    move-result p0

    .line 8
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static c()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->b:Ly2/c;

    .line 3
    invoke-interface {v0}, Ly2/c;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 9
    return-object v0
.end method
