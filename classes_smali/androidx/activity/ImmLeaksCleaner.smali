.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "ImmLeaksCleaner.java"

# interfaces
.implements Landroidx/lifecycle/k;


# static fields
.field public static a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    if-eq p2, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget p1, Landroidx/activity/ImmLeaksCleaner;->a:I

    .line 8
    const/4 p2, 0x1

    .line 9
    if-nez p1, :cond_30

    .line 11
    const/4 p1, 0x2

    .line 12
    :try_start_b
    sput p1, Landroidx/activity/ImmLeaksCleaner;->a:I

    .line 14
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    const-string v0, "mServedView"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    const-string v0, "mNextServedView"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 36
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 38
    const-string v0, "mH"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 47
    sput p2, Landroidx/activity/ImmLeaksCleaner;->a:I
    :try_end_30
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_30} :catch_30

    .line 49
    :catch_30
    :cond_30
    sget p1, Landroidx/activity/ImmLeaksCleaner;->a:I

    .line 51
    if-eq p1, p2, :cond_35

    .line 53
    return-void

    .line 54
    :cond_35
    const/4 p1, 0x0

    .line 55
    throw p1
.end method
