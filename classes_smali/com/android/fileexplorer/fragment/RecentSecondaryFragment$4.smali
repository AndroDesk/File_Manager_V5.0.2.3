.class Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$4;
.super Ljava/lang/Object;
.source "RecentSecondaryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public createFastScrollerCapsule()Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;-><init>(Landroid/content/Context;)V

    .line 12
    const v1, 0x7f12012a

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/FastScrollerTimeCapsuleView;->setStyle(I)V

    .line 18
    return-object v0
.end method

.method public isShowCapsule()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
