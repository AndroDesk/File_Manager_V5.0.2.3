.class Lmiuix/navigator/adapter/NavigationAdapter$3;
.super Landroidx/recyclerview/widget/x;
.source "NavigationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/NavigationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mDragDownConfig:Lmiuix/animation/base/AnimConfig;

.field private final mDragUpConfig:Lmiuix/animation/base/AnimConfig;

.field public final synthetic this$0:Lmiuix/navigator/adapter/NavigationAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/adapter/NavigationAdapter;Landroidx/recyclerview/widget/f$e;)V
    .registers 5

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/x;-><init>(Landroidx/recyclerview/widget/f$e;)V

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p2, 0x2

    new-array v0, p2, [F

    fill-array-data v0, :array_30

    const/4 v1, -0x2

    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->mDragUpConfig:Lmiuix/animation/base/AnimConfig;

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array p2, p2, [F

    fill-array-data p2, :array_38

    invoke-static {v1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->mDragDownConfig:Lmiuix/animation/base/AnimConfig;

    return-void

    :array_30
    .array-data 4
        0x3f666666  # 0.9f
        0x3e4ccccd  # 0.2f
    .end array-data

    :array_38
    .array-data 4
        0x3f666666  # 0.9f
        0x3eb33333  # 0.35f
    .end array-data
.end method


# virtual methods
.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 7

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget-object v2, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {v2}, Lmiuix/navigator/adapter/NavigationAdapter;->access$200(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/animation/property/ViewProperty;

    move-result-object v2

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-interface {v1, v2, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    iget-object v4, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {v4}, Lmiuix/navigator/adapter/NavigationAdapter;->access$100(Lmiuix/navigator/adapter/NavigationAdapter;)I

    move-result v4

    invoke-interface {v1, v2, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v2, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object v4, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->mDragUpConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {p1}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {v1}, Lmiuix/navigator/adapter/NavigationAdapter;->access$200(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/animation/property/ViewProperty;

    move-result-object v1

    aput-object v1, v0, v3

    const/high16 v1, 0x3b800000  # 0.00390625f

    invoke-virtual {p1, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    return-void
.end method

.method public onStopDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 6

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->onStopDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-static {v1}, Lmiuix/navigator/adapter/NavigationAdapter;->access$200(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/animation/property/ViewProperty;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->mDragDownConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
