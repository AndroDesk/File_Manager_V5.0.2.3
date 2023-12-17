.class Lcom/android/fileexplorer/view/XmasHeader$2;
.super Ljava/lang/Object;
.source "XmasHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/XmasHeader;->startPullEndAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/XmasHeader;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/XmasHeader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader$2;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader$2;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/XmasHeader;->access$100(Lcom/android/fileexplorer/view/XmasHeader;)Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0801aa

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader$2;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/view/XmasHeader;->access$100(Lcom/android/fileexplorer/view/XmasHeader;)Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/fileexplorer/view/XmasHeader$2$1;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/XmasHeader$2$1;-><init>(Lcom/android/fileexplorer/view/XmasHeader$2;)V

    .line 24
    const-wide/16 v2, 0x12c

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method
