.class Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment$1;
.super Ljava/lang/Object;
.source "WidgetContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/WidgetContentFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 10
    return-void
.end method
