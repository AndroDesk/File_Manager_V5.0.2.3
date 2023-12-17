.class Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;
.super Lmiuix/springback/trigger/BaseTrigger$SimpleAction;
.source "MiuiPullRecyclerViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockAction"
.end annotation


# instance fields
.field private mIconBody:Landroid/widget/ImageView;

.field private mIconHeader:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    .line 3
    invoke-direct {p0}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->access$200(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1e

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->access$200(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->createLockView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mView:Landroid/view/View;

    .line 31
    :cond_1e
    return-void
.end method

.method private createLockView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    const v0, 0x7f0d0169

    .line 4
    if-eqz p2, :cond_b

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    const p2, 0x7f0a01f5

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/widget/ImageView;

    .line 26
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mIconHeader:Landroid/widget/ImageView;

    .line 28
    const p2, 0x7f0a01f4

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/widget/ImageView;

    .line 37
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mIconBody:Landroid/widget/ImageView;

    .line 39
    const p2, 0x7f0a021f

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/widget/TextView;

    .line 48
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mLabel:Landroid/widget/TextView;

    .line 50
    return-object p1
.end method


# virtual methods
.method public onActivated()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LockAction_onActivated"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mIconBody:Landroid/widget/ImageView;

    .line 10
    const v1, 0x7f0805fe

    .line 13
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mIconHeader:Landroid/widget/ImageView;

    .line 22
    const v1, 0x7f080600

    .line 25
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mLabel:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f11038b

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mLabel:Landroid/widget/TextView;

    .line 42
    const v1, 0x7f0604a6

    .line 45
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    return-void
.end method

.method public onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mView:Landroid/view/View;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->createLockView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mView:Landroid/view/View;

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mView:Landroid/view/View;

    .line 13
    return-object p1
.end method

.method public onEntered()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LockAction_onEntered"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mIconBody:Landroid/widget/ImageView;

    .line 10
    const v1, 0x7f0805ff

    .line 13
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mIconHeader:Landroid/widget/ImageView;

    .line 22
    const v1, 0x7f080601

    .line 25
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mLabel:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f11037f

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->mLabel:Landroid/widget/TextView;

    .line 42
    const v1, 0x7f0604a7

    .line 45
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    return-void
.end method

.method public onExit()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LockAction_onExit"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onFinished()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LockAction_onFinish"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V

    .line 13
    return-void
.end method

.method public onTriggered()V
    .registers 3

    .line 1
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 3
    const-string v1, "LockAction_onTriggered"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->access$300(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V

    .line 13
    return-void
.end method
