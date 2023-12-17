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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/XmasHeader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader$2;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader$2;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    invoke-static {v0}, Lcom/android/fileexplorer/view/XmasHeader;->access$100(Lcom/android/fileexplorer/view/XmasHeader;)Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    move-result-object v0

    const v1, 0x7f0801aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader$2;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    invoke-static {v0}, Lcom/android/fileexplorer/view/XmasHeader;->access$100(Lcom/android/fileexplorer/view/XmasHeader;)Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/XmasHeader$2$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/XmasHeader$2$1;-><init>(Lcom/android/fileexplorer/view/XmasHeader$2;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
