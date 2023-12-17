.class Lcom/android/fileexplorer/view/GuideDialog$1;
.super Ljava/lang/Object;
.source "GuideDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/GuideDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/GuideDialog;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/GuideDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog$1;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$1;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$000(Lcom/android/fileexplorer/view/GuideDialog;)Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-lt v0, v1, :cond_17

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$1;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$000(Lcom/android/fileexplorer/view/GuideDialog;)Lcom/android/fileexplorer/view/ScrollControlViewPager;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 24
    :cond_17
    return-void
.end method
