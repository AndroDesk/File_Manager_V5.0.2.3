.class public final Landroidx/appcompat/widget/f0$b;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 3
    const-string v1, "positionSelector"

    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 13
    const-class v5, Landroid/view/View;

    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v5, v2, v6

    .line 18
    const/4 v5, 0x2

    .line 19
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 21
    aput-object v7, v2, v5

    .line 23
    const/4 v5, 0x3

    .line 24
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 26
    aput-object v7, v2, v5

    .line 28
    const/4 v5, 0x4

    .line 29
    aput-object v7, v2, v5

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Landroidx/appcompat/widget/f0$b;->a:Ljava/lang/reflect/Method;

    .line 37
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 40
    const-class v0, Landroid/widget/AdapterView;

    .line 42
    const-string v1, "setSelectedPositionInt"

    .line 44
    new-array v2, v6, [Ljava/lang/Class;

    .line 46
    aput-object v3, v2, v4

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Landroidx/appcompat/widget/f0$b;->b:Ljava/lang/reflect/Method;

    .line 54
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 57
    const-class v0, Landroid/widget/AdapterView;

    .line 59
    const-string v1, "setNextSelectedPositionInt"

    .line 61
    new-array v2, v6, [Ljava/lang/Class;

    .line 63
    aput-object v3, v2, v4

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Landroidx/appcompat/widget/f0$b;->c:Ljava/lang/reflect/Method;

    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 74
    sput-boolean v6, Landroidx/appcompat/widget/f0$b;->d:Z
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4b} :catch_4c

    .line 76
    goto :goto_50

    .line 77
    :catch_4c
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    :goto_50
    return-void
.end method
