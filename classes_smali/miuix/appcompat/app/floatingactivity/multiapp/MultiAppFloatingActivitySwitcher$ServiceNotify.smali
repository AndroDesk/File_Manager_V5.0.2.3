.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;
.super Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;
.source "MultiAppFloatingActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceNotify"
.end annotation


# instance fields
.field public mActivityIdentity:Ljava/lang/String;

.field public mActivityTaskId:I

.field public final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;-><init>()V

    .line 6
    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityIdentity:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityTaskId:I

    .line 18
    return-void
.end method

.method private getActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_13

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivityTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivityIdentity()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivity(ILjava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method


# virtual methods
.method public getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityIdentity:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getActivityTaskId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityTaskId:I

    .line 3
    return v0
.end method

.method public notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_b8

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p1, v2, :cond_b0

    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq p1, v2, :cond_9b

    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq p1, v2, :cond_93

    .line 18
    packed-switch p1, :pswitch_data_c0

    .line 21
    goto/16 :goto_bf

    .line 23
    :pswitch_16  #0xb
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    .line 30
    goto/16 :goto_bf

    .line 32
    :pswitch_1f  #0xa
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_bf

    .line 38
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 40
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1400(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/os/Handler;

    .line 43
    move-result-object p2

    .line 44
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;

    .line 46
    invoke-direct {v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 49
    const-wide/16 v2, 0xa0

    .line 51
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    goto/16 :goto_bf

    .line 56
    :pswitch_37  #0x9
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_44

    .line 62
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_44

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    const/4 v1, 0x0

    .line 70
    :goto_45
    const-string p1, "check_finishing"

    .line 72
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    goto/16 :goto_bf

    .line 77
    :pswitch_4c  #0x8
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 80
    move-result-object p1

    .line 81
    if-eqz p2, :cond_bf

    .line 83
    if-eqz p1, :cond_bf

    .line 85
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    .line 88
    move-result-object p1

    .line 89
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;->readBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    .line 92
    move-result-object p2

    .line 93
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->generateSnapShotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/view/View;

    .line 96
    move-result-object p2

    .line 97
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 99
    invoke-virtual {v1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    .line 102
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 104
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;

    .line 107
    move-result-object p2

    .line 108
    if-eqz p2, :cond_bf

    .line 110
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 112
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;

    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 119
    move-result-object p2

    .line 120
    if-eqz p2, :cond_bf

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Landroid/view/ViewGroup;

    .line 128
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 131
    move-result-object p1

    .line 132
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 134
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;

    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Landroid/view/View;

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 147
    goto :goto_bf

    .line 148
    :cond_93
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$900(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    .line 155
    goto :goto_bf

    .line 156
    :cond_9b
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    .line 163
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_bf

    .line 169
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 172
    move-result-object p2

    .line 173
    invoke-static {p2, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Landroid/content/Context;)V

    .line 176
    goto :goto_bf

    .line 177
    :cond_b0
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 180
    move-result-object p1

    .line 181
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1000(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    .line 184
    goto :goto_bf

    .line 185
    :cond_b8
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$900(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    .line 192
    :cond_bf
    :goto_bf
    return-object v0

    .line 193
    :pswitch_data_c0
    .packed-switch 0x8
        :pswitch_4c  #00000008
        :pswitch_37  #00000009
        :pswitch_1f  #0000000a
        :pswitch_16  #0000000b
    .end packed-switch
.end method

.method public resetAppCompatActivity(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityIdentity:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityTaskId:I

    .line 13
    return-void
.end method
