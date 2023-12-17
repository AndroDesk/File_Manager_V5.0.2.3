.class Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_27

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_27

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$102(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;I)I

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 22
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$201(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$301(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    .line 40
    :cond_27
    return v0
.end method
