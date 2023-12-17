.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;
.super Ljava/lang/Object;
.source "ContextMenuHelper.java"


# static fields
.field private static final getContextMenuInfo:Ljava/lang/reflect/Method;

.field private static final mListenerInfo:Ljava/lang/reflect/Field;

.field private static final mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

.field private static final onCreateContextMenu:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "android.view.View$ListenerInfo"

    .line 3
    const-string v1, "mOnCreateContextMenuListener"

    .line 5
    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

    .line 11
    const-class v0, Landroid/view/View;

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v2, v1, [Ljava/lang/Class;

    .line 16
    const-string v3, "getContextMenuInfo"

    .line 18
    invoke-static {v0, v3, v2}, Lmiuix/reflect/Reflects;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->getContextMenuInfo:Ljava/lang/reflect/Method;

    .line 24
    const-class v0, Landroid/view/View;

    .line 26
    const/4 v2, 0x1

    .line 27
    new-array v2, v2, [Ljava/lang/Class;

    .line 29
    const-class v3, Landroid/view/ContextMenu;

    .line 31
    aput-object v3, v2, v1

    .line 33
    const-string v1, "onCreateContextMenu"

    .line 35
    invoke-static {v0, v1, v2}, Lmiuix/reflect/Reflects;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->onCreateContextMenu:Ljava/lang/reflect/Method;

    .line 41
    const-class v0, Landroid/view/View;

    .line 43
    const-string v1, "mListenerInfo"

    .line 45
    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->mListenerInfo:Ljava/lang/reflect/Field;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static createContextMenu(Landroid/view/View;Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;)V
    .registers 6

    .line 1
    sget-object v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->getContextMenuInfo:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p0, v0, v2}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ContextMenu$ContextMenuInfo;

    .line 12
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 15
    sget-object v2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->onCreateContextMenu:Ljava/lang/reflect/Method;

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    aput-object p1, v3, v1

    .line 22
    invoke-static {p0, v2, v3}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->mListenerInfo:Ljava/lang/reflect/Field;

    .line 27
    invoke-static {p0, v1}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2d

    .line 33
    sget-object v2, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->mOnCreateContextMenuListener:Ljava/lang/reflect/Field;

    .line 35
    invoke-static {v1, v2}, Lmiuix/reflect/Reflects;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/View$OnCreateContextMenuListener;

    .line 41
    if-eqz v1, :cond_2d

    .line 43
    invoke-interface {v1, p1, p0, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 46
    :cond_2d
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    move-result-object p0

    .line 54
    instance-of v0, p0, Landroid/view/View;

    .line 56
    if-eqz v0, :cond_3e

    .line 58
    check-cast p0, Landroid/view/View;

    .line 60
    invoke-static {p0, p1}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->createContextMenu(Landroid/view/View;Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;)V

    .line 63
    :cond_3e
    return-void
.end method
