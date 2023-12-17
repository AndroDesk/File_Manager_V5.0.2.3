.class Lcom/android/fileexplorer/view/XmasHeader$2$1;
.super Ljava/lang/Object;
.source "XmasHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/XmasHeader$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/XmasHeader$2;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/XmasHeader$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader$2$1;->this$1:Lcom/android/fileexplorer/view/XmasHeader$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader$2$1;->this$1:Lcom/android/fileexplorer/view/XmasHeader$2;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/view/XmasHeader$2;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/view/XmasHeader;->access$200(Lcom/android/fileexplorer/view/XmasHeader;)Landroid/widget/ImageView;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader$2$1;->this$1:Lcom/android/fileexplorer/view/XmasHeader$2;

    .line 14
    iget-object v0, v0, Lcom/android/fileexplorer/view/XmasHeader$2;->this$0:Lcom/android/fileexplorer/view/XmasHeader;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/view/XmasHeader;->access$300(Lcom/android/fileexplorer/view/XmasHeader;)Landroid/widget/ImageView;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 23
    return-void
.end method
