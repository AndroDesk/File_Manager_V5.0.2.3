.class public Landroidx/core/app/ComponentActivity;
.super Landroid/app/Activity;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/lifecycle/m;
.implements Lm0/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ComponentActivity$a;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/core/app/ComponentActivity$a;",
            ">;",
            "Landroidx/core/app/ComponentActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Landroidx/lifecycle/n;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/f;

    .line 6
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/f;

    .line 11
    new-instance v0, Landroidx/lifecycle/n;

    .line 13
    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    .line 16
    iput-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 18
    return-void
.end method

.method private static shouldSkipDump([Ljava/lang/String;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6b

    .line 4
    array-length v1, p0

    .line 5
    if-lez v1, :cond_6b

    .line 7
    aget-object p0, p0, v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    sparse-switch v2, :sswitch_data_6c

    .line 21
    goto :goto_4b

    .line 22
    :sswitch_15
    const-string v2, "--autofill"

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1e

    .line 30
    goto :goto_4b

    .line 31
    :cond_1e
    const/4 v1, 0x4

    .line 32
    goto :goto_4b

    .line 33
    :sswitch_20
    const-string v2, "--contentcapture"

    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_29

    .line 41
    goto :goto_4b

    .line 42
    :cond_29
    const/4 v1, 0x3

    .line 43
    goto :goto_4b

    .line 44
    :sswitch_2b
    const-string v2, "--list-dumpables"

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_34

    .line 52
    goto :goto_4b

    .line 53
    :cond_34
    const/4 v1, 0x2

    .line 54
    goto :goto_4b

    .line 55
    :sswitch_36
    const-string v2, "--dump-dumpable"

    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3f

    .line 63
    goto :goto_4b

    .line 64
    :cond_3f
    move v1, v3

    .line 65
    goto :goto_4b

    .line 66
    :sswitch_41
    const-string v2, "--translation"

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_4a

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move v1, v0

    .line 76
    :goto_4b
    packed-switch v1, :pswitch_data_82

    .line 79
    goto :goto_6b

    .line 80
    :pswitch_4f  #0x4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    const/16 v1, 0x1a

    .line 84
    if-lt p0, v1, :cond_56

    .line 86
    move v0, v3

    .line 87
    :cond_56
    return v0

    .line 88
    :pswitch_57  #0x3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x1d

    .line 92
    if-lt p0, v1, :cond_5e

    .line 94
    move v0, v3

    .line 95
    :cond_5e
    return v0

    .line 96
    :pswitch_5f  #0x1, 0x2
    invoke-static {}, Li0/a;->a()Z

    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :pswitch_64  #0x0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    const/16 v1, 0x1f

    .line 105
    if-lt p0, v1, :cond_6b

    .line 107
    move v0, v3

    .line 108
    :cond_6b
    :goto_6b
    return v0

    .line 109
    :sswitch_data_6c
    .sparse-switch
        -0x2673d6ef -> :sswitch_41
        0x5fd0f67 -> :sswitch_36
        0x1c2b8816 -> :sswitch_2b
        0x4519f64d -> :sswitch_20
        0x56b9c952 -> :sswitch_15
    .end sparse-switch

    .line 131
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_64  #00000000
        :pswitch_5f  #00000001
        :pswitch_5f  #00000002
        :pswitch_57  #00000003
        :pswitch_4f  #00000004
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-static {v0, p1}, Lm0/h;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-static {p0, v0, p0, p1}, Lm0/h;->b(Lm0/h$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-static {v0, p1}, Lm0/h;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/core/app/ComponentActivity$a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/f;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/core/app/ComponentActivity$a;

    .line 9
    return-object p1
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 3
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ReportFragment;->c(Landroid/app/Activity;)V

    .line 7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 3
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 5
    const-string v2, "markState"

    .line 7
    invoke-virtual {v0, v2}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    .line 10
    const-string v2, "setCurrentState"

    .line 12
    invoke-virtual {v0, v2}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->g(Landroidx/lifecycle/Lifecycle$State;)V

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public putExtraData(Landroidx/core/app/ComponentActivity$a;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:Landroidx/collection/f;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public final shouldDumpInternalState([Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Landroidx/core/app/ComponentActivity;->shouldSkipDump([Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 7
    return p1
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
