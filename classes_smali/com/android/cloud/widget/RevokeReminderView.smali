.class public Lcom/android/cloud/widget/RevokeReminderView;
.super Landroid/widget/LinearLayout;
.source "RevokeReminderView.java"


# instance fields
.field private mCardSummaryTextView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/cloud/widget/RevokeReminderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p1, p0, Lcom/android/cloud/widget/RevokeReminderView;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/android/cloud/widget/RevokeReminderView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/RevokeReminderView;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d00bb

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    const v0, 0x7f0a0468

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/android/cloud/widget/RevokeReminderView;->mDescriptionTextView:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0a0467

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/android/cloud/widget/RevokeReminderView;->mCardSummaryTextView:Landroid/widget/TextView;

    .line 35
    return-void
.end method


# virtual methods
.method public initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/cloud/widget/RevokeReminderView;->initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public initViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/cloud/widget/RevokeReminderView;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/cloud/widget/RevokeReminderView;->mCardSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    if-eq p3, p1, :cond_18

    .line 4
    iget-object p1, p0, Lcom/android/cloud/widget/RevokeReminderView;->mCardSummaryTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/cloud/widget/RevokeReminderView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/cloud/util/TextViewUtils;->setFirstLineColor(Landroid/widget/TextView;I)V

    :cond_18
    return-void
.end method
