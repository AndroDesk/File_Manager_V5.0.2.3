.class Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;
.super Ljava/lang/Object;
.source "FloatingActivitySwitcher.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefineOnFloatingActivityCallback"
.end annotation


# instance fields
.field public mActivityIdentity:Ljava/lang/String;

.field public mActivityTaskId:I

.field public final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityIdentity:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityTaskId:I

    .line 18
    return-void
.end method

.method private addLastActivityPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_26

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_26

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    if-eqz p1, :cond_26

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/ViewOverlay;->clear()V

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 39
    :cond_26
    return-void
.end method

.method private checkFinishEnable(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$600(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_f

    .line 10
    if-eq p1, v1, :cond_10

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p1, v0, :cond_f

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :cond_10
    :goto_10
    return v1
.end method

.method private shouldTopFloatingClose(I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1c

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v0

    .line 25
    if-le v0, v1, :cond_1c

    .line 27
    move v0, v1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    const/4 v3, 0x4

    .line 31
    if-eq p1, v3, :cond_23

    .line 33
    const/4 v3, 0x3

    .line 34
    if-ne p1, v3, :cond_26

    .line 36
    :cond_23
    if-eqz v0, :cond_26

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v1, v2

    .line 40
    :goto_27
    return v1
.end method


# virtual methods
.method public checkActivity(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public closeAllPage()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1a

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 23
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 29
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    return-void
.end method

.method public getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityIdentity:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getActivityTaskId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityTaskId:I

    .line 3
    return v0
.end method

.method public getPageCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    if-eqz v0, :cond_17

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    return v0
.end method

.method public getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 7

    .line 1
    if-eqz p1, :cond_20

    .line 3
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_20

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_20

    .line 15
    const/4 v2, 0x0

    .line 16
    :cond_f
    invoke-static {v1, p1}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->generateSnapShotView(Landroid/content/Context;Lmiuix/appcompat/app/AppCompatActivity;)Landroid/view/View;

    .line 19
    move-result-object v3

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    if-nez v3, :cond_1a

    .line 24
    const/4 v4, 0x3

    .line 25
    if-lt v2, v4, :cond_f

    .line 27
    :cond_1a
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    .line 30
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->addLastActivityPanel(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 33
    :cond_20
    return-void
.end method

.method public isFirstPageEnterAnimExecuteEnable()Z
    .registers 8

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_12

    .line 18
    return v1

    .line 19
    :cond_12
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 21
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/ArrayList;

    .line 35
    if-eqz v2, :cond_76

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    if-le v3, v1, :cond_47

    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v3

    .line 48
    move v5, v4

    .line 49
    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_47

    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    .line 61
    invoke-virtual {v6}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_44

    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 69
    :cond_44
    if-le v5, v1, :cond_30

    .line 71
    return v4

    .line 72
    :cond_47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_4f

    .line 78
    const/4 v2, 0x0

    .line 79
    goto :goto_55

    .line 80
    :cond_4f
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 86
    :goto_55
    if-nez v2, :cond_58

    .line 88
    return v1

    .line 89
    :cond_58
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_5f

    .line 95
    return v1

    .line 96
    :cond_5f
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 110
    if-nez v2, :cond_70

    .line 112
    return v1

    .line 113
    :cond_70
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)Z

    .line 116
    move-result v0

    .line 117
    xor-int/2addr v0, v1

    .line 118
    return v0

    .line 119
    :cond_76
    return v1
.end method

.method public isFirstPageExitAnimExecuteEnable()Z
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_12

    .line 18
    return v1

    .line 19
    :cond_12
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 21
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    if-eqz v0, :cond_43

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    move v3, v2

    .line 43
    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3f

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lmiuix/appcompat/app/AppCompatActivity;

    .line 55
    invoke-virtual {v4}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_2a

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_2a

    .line 64
    :cond_3f
    if-ne v3, v1, :cond_42

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v1, v2

    .line 68
    :cond_43
    :goto_43
    return v1
.end method

.method public markActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 6
    return-void
.end method

.method public onDragEnd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$900(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public onDragStart()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$800(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public onFinish(I)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->checkFinishEnable(I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->shouldTopFloatingClose(I)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_18

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 17
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$500(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    .line 24
    goto :goto_21

    .line 25
    :cond_18
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->closeAllFloatingPage(Ljava/lang/String;)V

    .line 34
    :goto_21
    return v1
.end method

.method public onHideBehindPage()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$800(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    .line 10
    return-void
.end method
