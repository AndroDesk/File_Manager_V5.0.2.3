.class Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;
.super Landroid/os/Handler;
.source "MultiTouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/crop/MultiTouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;->this$0:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_13

    :cond_8
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;->this$0:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->access$100(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V

    goto :goto_13

    :cond_e
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/MultiTouchImageView$1;->this$0:Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->access$000(Lcom/android/fileexplorer/view/crop/MultiTouchImageView;)V

    :goto_13
    return-void
.end method
