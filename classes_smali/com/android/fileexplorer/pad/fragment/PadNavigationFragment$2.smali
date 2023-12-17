.class Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$2;
.super Ljava/lang/Object;
.source "PadNavigationFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/view/View;II)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;

    .line 3
    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;->access$000(Lcom/android/fileexplorer/pad/fragment/PadNavigationFragment;II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
