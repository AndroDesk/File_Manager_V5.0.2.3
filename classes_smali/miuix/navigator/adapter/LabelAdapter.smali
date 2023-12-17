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
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
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

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/adapter/LabelAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lmiuix/navigator/Navigator$Label;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 12
    return-void
.end method

.method private setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/Navigator$Label;)V
    .registers 5

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    .line 6
    if-eqz v0, :cond_11

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lmiuix/navigator/adapter/LabelAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    .line 14
    invoke-interface {v1, p1, p2, v0}, Lmiuix/navigator/adapter/WidgetProvider;->onSetupWidget(Landroid/view/ViewGroup;Ljava/lang/Object;Z)V

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    const/16 p2, 0x8

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :goto_16
    return-void
.end method


# virtual methods
.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 3
    return-object v0
.end method

.method public final notifyChanged(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/navigator/adapter/LabelImpl;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    check-cast p1, Lmiuix/navigator/adapter/LabelImpl;

    .line 7
    invoke-virtual {p1}, Lmiuix/navigator/adapter/LabelImpl;->notifyChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method public final notifyDataSetChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :cond_7
    return-void
.end method

.method public onAttachNavigationAdapter(Lmiuix/navigator/adapter/NavigationAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigationAdapter:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    invoke-virtual {p1}, Lmiuix/navigator/adapter/NavigationAdapter;->getNavigator()Lmiuix/navigator/Navigator;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 9
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;Lmiuix/navigator/Navigator$Label;)V
    .registers 6

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    const v1, 0x1020016

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getTitle()Ljava/lang/CharSequence;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    const v1, 0x1020006

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/ImageView;

    .line 30
    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2b

    .line 36
    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    goto :goto_3e

    .line 44
    :cond_2b
    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getIconResId()I

    .line 47
    move-result v1

    .line 48
    const/4 v2, -0x1

    .line 49
    if-eq v1, v2, :cond_3a

    .line 51
    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getIconResId()I

    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    goto :goto_3e

    .line 59
    :cond_3a
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_3e
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mNavigator:Lmiuix/navigator/Navigator;

    .line 65
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 71
    if-eqz v0, :cond_54

    .line 73
    invoke-virtual {p2}, Lmiuix/navigator/Navigator$Label;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_54

    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    const/4 v0, 0x0

    .line 86
    :goto_55
    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 89
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 91
    new-instance v1, Lcom/android/fileexplorer/adapter/a;

    .line 93
    const/16 v2, 0x8

    .line 95
    invoke-direct {v1, v2, p0, p2}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 103
    const v0, 0x1020018

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/view/ViewGroup;

    .line 112
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/adapter/LabelAdapter;->setupWidgetFrame(Landroid/view/ViewGroup;Lmiuix/navigator/Navigator$Label;)V

    .line 115
    return-void
.end method

.method public onPrepareViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    const v0, 0x1020018

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    iget-object v0, p0, Lmiuix/navigator/adapter/LabelAdapter;->mWidgetProvider:Lmiuix/navigator/adapter/WidgetProvider;

    .line 14
    if-eqz v0, :cond_12

    .line 16
    invoke-interface {v0, p1}, Lmiuix/navigator/adapter/WidgetProvider;->onPrepareWidget(Landroid/view/ViewGroup;)V

    .line 19
    :cond_12
    return-void
.end method
