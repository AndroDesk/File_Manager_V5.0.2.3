.class public Lmiuix/navigator/adapter/LabelAdapter;
.super Ljava/lang/Object;
.source "LabelAdapter.java"


# instance fields
.field private mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

.field private mNavigator:Lmiuix/navigator/Navigator;

.field private final mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/navigator/adapter/WidgetProvider<",
            "Lmiuix/navigator/Navigator$Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/navigator/adapter/LabelAdapter;-><init>(Lmiuix/navigator/adapter/WidgetProvider;)V

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/adapter/WidgetProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/WidgetProvider<",
            "Lmiuix/navigator/Navigator$Label;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/adapter/LabelAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/adapter/LabelAdapter;Lmiuix/navigator/Navigator$Label;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/LabelAdapter;->lambda$onBindViewHolder$0(Lmiuix/navigator/Navigator$Label;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lmiuix/navigator/Navigator$Label;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/adapter/LabelAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object p2

    invoke-virtual {p1}, Lmiuix/navigator/Navigator$Label;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    return-void
.end method

.method private setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/Navigator$Label;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lmiuix/navigator/adapter/LabelAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    invoke-interface {v1, p1, p2, v0}, Lmiuix/navigator/adapter/WidgetProvider;->onSetupWidget(Landroid/view/ViewGroup;Ljava/lang/Object;Z)V

    goto :goto_16

    :cond_11
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    return-void
.end method


# virtual methods
.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    return-object v0
.end method

.method public final notifyChanged(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    instance-of v0, p1, Lmiuix/navigator/adapter/LabelImpl;

    if-eqz v0, :cond_9

    check-cast p1, Lmiuix/navigator/adapter/LabelImpl;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/LabelImpl;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public final notifyDataSetChanged()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    invoke-virtual {p1}, Lmiuix/navigator/adapter/NavigationAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/Navigator$Label;)V
    .registers 6

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    :cond_2b
    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getIconResId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e

    :cond_3a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3e
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_54

    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x1

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/fileexplorer/adapter/a;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0, p2}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/LabelAdapter;->setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public onPrepareViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    if-eqz v0, :cond_12

    invoke-interface {v0, p1}, Lmiuix/navigator/adapter/WidgetProvider;->onPrepareWidget(Landroid/view/ViewGroup;)V

    :cond_12
    return-void
.end method
