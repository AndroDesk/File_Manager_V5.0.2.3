.class Lcom/android/fileexplorer/fragment/RecentFragment$7;
.super Ljava/lang/Object;
.source "RecentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;->showEmptyView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$7;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$7;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/controller/IntentBuilder;->startMiMover(Landroid/content/Context;)V

    return-void
.end method