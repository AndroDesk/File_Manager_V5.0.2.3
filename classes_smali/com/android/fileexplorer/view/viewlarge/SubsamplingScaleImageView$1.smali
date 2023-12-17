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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$102(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;I)I

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$000(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$201(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView$1;->this$0:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->access$301(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    :cond_27
    return v0
.end method
