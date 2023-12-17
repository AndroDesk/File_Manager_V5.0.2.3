.class Lmiuix/preference/PreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Lmiuix/preference/PreferenceFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 1

    invoke-static {p0}, Lmiuix/preference/PreferenceFragment$1;->lambda$onLayoutChange$0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private static synthetic lambda$onLayoutChange$0(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_9

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->endAnimations()V

    .line 10
    :cond_9
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 18

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v2, v3}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 4
    iget-object v3, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    iget-object v4, v2, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Lmiuix/preference/PreferenceFragment;->access$102(Lmiuix/preference/PreferenceFragment;I)I

    .line 5
    iget-object v3, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    iget-object v4, v2, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Lmiuix/preference/PreferenceFragment;->access$202(Lmiuix/preference/PreferenceFragment;I)I

    .line 6
    iget-object v3, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v3}, Lmiuix/preference/PreferenceFragment;->access$300(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceFragment$FrameDecoration;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 7
    iget-object v3, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v3}, Lmiuix/preference/PreferenceFragment;->access$300(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceFragment$FrameDecoration;

    move-result-object v3

    iget-object v2, v2, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateWindowHeight(I)V

    .line 8
    :cond_42
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$400(Lmiuix/preference/PreferenceFragment;)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    move-result-object v2

    if-eqz v2, :cond_cf

    .line 9
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v2}, Lmiuix/preference/PreferenceFragment;->isInFloatingWindowMode()Z

    move-result v2

    .line 10
    iget-object v3, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v3}, Lmiuix/preference/PreferenceFragment;->access$400(Lmiuix/preference/PreferenceFragment;)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    move-result-object v3

    iget-object v4, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 11
    invoke-static {v4}, Lmiuix/preference/PreferenceFragment;->access$100(Lmiuix/preference/PreferenceFragment;)I

    move-result v4

    iget-object v5, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v5}, Lmiuix/preference/PreferenceFragment;->access$200(Lmiuix/preference/PreferenceFragment;)I

    move-result v5

    sub-int v6, p4, p2

    sub-int v7, p5, p3

    move-object p1, v3

    move p2, v4

    move p3, v5

    move p4, v6

    move p5, v7

    move p6, v1

    move p7, v2

    .line 12
    invoke-virtual/range {p1 .. p7}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->onContainerSizeChanged(IIIIFZ)V

    .line 13
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$400(Lmiuix/preference/PreferenceFragment;)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 14
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$400(Lmiuix/preference/PreferenceFragment;)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {v2, v1}, Lmiuix/preference/PreferenceFragment;->access$502(Lmiuix/preference/PreferenceFragment;I)I

    goto :goto_93

    .line 15
    :cond_8d
    iget-object v1, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiuix/preference/PreferenceFragment;->access$502(Lmiuix/preference/PreferenceFragment;I)I

    .line 16
    :goto_93
    iget-object v1, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v1

    if-eqz v1, :cond_cf

    .line 17
    iget-object v1, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v1

    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraPaddingHorizontal(I)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 18
    iget-object v1, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/preference/PreferenceFragment;->onExtraPaddingChanged(I)V

    .line 19
    iget-object v1, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_cf

    .line 20
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    new-instance v2, Lmiuix/preference/a;

    invoke-direct {v2, v1}, Lmiuix/preference/a;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_cf
    return-void
.end method
