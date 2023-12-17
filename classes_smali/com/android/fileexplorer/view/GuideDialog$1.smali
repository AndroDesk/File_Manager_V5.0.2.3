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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/GuideDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog$1;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$1;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$000(Lcom/android/fileexplorer/view/GuideDialog;)Lcom/android/fileexplorer/view/ScrollControlViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/fileexplorer/view/GuideDialog$1;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/GuideDialog;->access$000(Lcom/android/fileexplorer/view/GuideDialog;)Lcom/android/fileexplorer/view/ScrollControlViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_17
    return-void
.end method
