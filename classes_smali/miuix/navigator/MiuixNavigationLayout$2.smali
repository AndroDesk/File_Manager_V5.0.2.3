.class Lmiuix/navigator/MiuixNavigationLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "MiuixNavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/MiuixNavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/MiuixNavigationLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 14

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v0

    const/16 v1, 0x11

    const-string v2, "NAVIGATION_CLOSE"

    const-string v3, "NAVIGATION_OPEN"

    const/4 v4, 0x2

    if-ne v4, v0, :cond_b4

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v4, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lmiuix/navigator/R$id;->secondary_content_decor:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_64

    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v4, p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$500(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v4

    if-eqz v4, :cond_43

    :cond_3b
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v4, p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    :cond_43
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$800(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v4

    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->showContentMask(I)V

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b4

    :cond_64
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    sget-object v5, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v5, :cond_b4

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v5, Lmiuix/navigator/R$id;->content_decor:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v4

    if-nez v4, :cond_b4

    if-eqz v0, :cond_b4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    :cond_96
    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$800(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v4

    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->showContentMask(I)V

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b4
    :goto_b4
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v0

    const-string v4, "CONTENT_OPEN"

    const-string v5, "CONTENT_CLOSE"

    const/4 v6, 0x1

    if-ne v6, v0, :cond_23d

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v7, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v7, Lmiuix/navigator/R$id;->secondary_content_decor:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v7, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1cc

    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v10}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v10

    sget-object v11, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v10, v11, :cond_10b

    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v10}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v10

    sget v11, Lmiuix/navigator/R$id;->content_decor:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v7, :cond_10b

    invoke-virtual {v7}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_10b
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13a

    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v10}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v10

    if-nez v10, :cond_13a

    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v10, v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v10, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1202(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v10, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_13a
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_155

    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v10, v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1402(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_155
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_183

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v6

    if-nez v6, :cond_183

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1200(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v6

    if-eqz v6, :cond_17e

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v10, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v10}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v10

    sub-int/2addr v6, v10

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_180

    :cond_17e
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_180
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_183
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c6

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1400(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v6

    if-eqz v6, :cond_1c4

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v6}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    move-result v6

    if-eqz v6, :cond_1b3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v8

    sub-int/2addr v6, v8

    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v8

    sub-int/2addr v6, v8

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1c0

    :cond_1b3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$1600(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v8

    sub-int/2addr v6, v8

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_1c0
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1c6

    :cond_1c4
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_1c6
    :goto_1c6
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23d

    :cond_1cc
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    sget-object v10, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v10, :cond_23d

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v10, Lmiuix/navigator/R$id;->content_decor:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_23d

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_212

    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v8, v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1202(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_238

    :cond_212
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_238

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6, v9}, Lmiuix/navigator/MiuixNavigationLayout;->access$1102(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    iget-object v6, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v6}, Lmiuix/navigator/MiuixNavigationLayout;->access$1200(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v6

    if-eqz v6, :cond_236

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v8, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v8}, Lmiuix/navigator/MiuixNavigationLayout;->access$1500(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v8

    sub-int/2addr v6, v8

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_238

    :cond_236
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_238
    :goto_238
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_23d
    :goto_23d
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object v0

    if-nez v0, :cond_246

    return-void

    :cond_246
    const-string v0, "OTHERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24f

    return-void

    :cond_24f
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25f

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenBegin()V

    goto :goto_28e

    :cond_25f
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26f

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseBegin()V

    goto :goto_28e

    :cond_26f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27f

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenBegin()V

    goto :goto_28e

    :cond_27f
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28e

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseBegin()V

    :cond_28e
    :goto_28e
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "OTHERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    const-string v0, "NAVIGATION_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenCancel()V

    goto :goto_59

    :cond_24
    const-string v0, "NAVIGATION_CLOSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseCancel()V

    goto :goto_59

    :cond_36
    const-string v0, "CONTENT_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenCancel()V

    goto :goto_59

    :cond_48
    const-string v0, "CONTENT_CLOSE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseCancel()V

    :cond_59
    :goto_59
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v0

    const-string v1, "OTHERS"

    const/4 v2, 0x2

    if-ne v2, v0, :cond_97

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    sget-object v2, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v2, :cond_97

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$700(Lmiuix/navigator/MiuixNavigationLayout;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    :cond_23
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$400(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v2, Lmiuix/navigator/R$id;->secondary_content_decor_wrapper:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lmiuix/navigator/R$id;->secondary_content_decor:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lmiuix/navigator/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v3, -0x1

    if-eqz v0, :cond_5d

    iget-object v4, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->hideContentMask()V

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_97

    :cond_5d
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    sget-object v4, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v4, :cond_97

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1000(Lmiuix/navigator/MiuixNavigationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v4, Lmiuix/navigator/R$id;->content_decor:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_97

    iget-object v2, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v2}, Lmiuix/navigator/MiuixNavigationLayout;->access$600(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v2

    if-nez v2, :cond_97

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->hideContentMask()V

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_97
    :goto_97
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v0

    const-string v2, "CONTENT_CLOSE"

    const-string v3, "NAVIGATION_CLOSE"

    const/4 v4, 0x1

    if-ne v4, v0, :cond_ba

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$1202(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    :cond_af
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, v4}, Lmiuix/navigator/MiuixNavigationLayout;->access$1402(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    :cond_ba
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object v0

    if-nez v0, :cond_c3

    return-void

    :cond_c3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    return-void

    :cond_ca
    const-string v0, "NAVIGATION_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenFinish()V

    goto :goto_10d

    :cond_dc
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseFinish()V

    goto :goto_10d

    :cond_ec
    const-string v0, "CONTENT_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenFinish()V

    goto :goto_10d

    :cond_fe
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10d

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseFinish()V

    :cond_10d
    :goto_10d
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$300(Lmiuix/navigator/MiuixNavigationLayout;)I

    move-result v0

    const-string v1, "CONTENT_CLOSE"

    const-string v2, "NAVIGATION_CLOSE"

    const/4 v3, 0x1

    if-ne v3, v0, :cond_ab

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1300(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v0

    if-nez v0, :cond_ab

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    sget-object v4, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    const v5, 0x3e4ccccd  # 0.2f

    if-ne v0, v4, :cond_66

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1800(Lmiuix/navigator/MiuixNavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_ab

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    goto :goto_ab

    :cond_4d
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_ab

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    goto :goto_ab

    :cond_66
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    sget-object v4, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v4, :cond_89

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_ab

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    goto :goto_ab

    :cond_89
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$900(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    sget-object v4, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    if-ne v0, v4, :cond_ab

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_ab

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1900(Lmiuix/navigator/MiuixNavigationLayout;)V

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, v3}, Lmiuix/navigator/MiuixNavigationLayout;->access$1302(Lmiuix/navigator/MiuixNavigationLayout;Z)Z

    :cond_ab
    :goto_ab
    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object v0

    if-nez v0, :cond_b4

    return-void

    :cond_b4
    const-string v0, "OTHERS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    return-void

    :cond_bd
    const-string v0, "NAVIGATION_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    goto :goto_e8

    :cond_cc
    const-string v0, "CONTENT_OPEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f5

    :cond_da
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentRatioChanged(F)V

    goto :goto_f5

    :cond_e8
    :goto_e8
    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$2;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {p1}, Lmiuix/navigator/MiuixNavigationLayout;->access$1700(Lmiuix/navigator/MiuixNavigationLayout;)Lmiuix/navigator/Navigator$NavigatorStateListener;

    move-result-object p1

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationRatioChanged(F)V

    :cond_f5
    :goto_f5
    return-void
.end method
