.class public Lcom/android/cloud/widget/notificationbar/NotificationBarView;
.super Landroid/widget/FrameLayout;
.source "NotificationBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageTv:Landroid/widget/TextView;

.field private mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

.field private mNotifyLayout:Landroid/widget/LinearLayout;

.field private mRemoveBarIv:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->initNotificationBarView(Landroid/content/Context;)V

    return-void
.end method

.method private initNotificationBarView(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0039

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f032fa9

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotifyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f032f7c

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mMessageTv:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    const p1, 0x7f032f70

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mRemoveBarIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setColorStyleByType(Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;)V
    .registers 5

    sget-object v0, Lcom/android/cloud/widget/notificationbar/NotificationBarView$1;->$SwitchMap$com$android$cloud$widget$notificationbar$AbsNotificationBar$BarType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f297e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f297f

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f012b28

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mMessageTv:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f012d4d

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotifyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mRemoveBarIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a023f

    if-eq p1, v0, :cond_23

    const v0, 0x7f0a02e6

    if-eq p1, v0, :cond_f

    goto :goto_2c

    :cond_f
    iget-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->hideClick(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cloud/util/helper/NotificationBarHelper;->saveLastCloseStorageFullNotifyBarTime(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->hide()V

    goto :goto_2c

    :cond_23
    iget-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->click(Landroid/content/Context;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public show(Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;)V
    .registers 4

    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

    invoke-virtual {p1}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->getBarType()Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->setColorStyleByType(Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;)V

    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mMessageTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mRemoveBarIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

    invoke-virtual {v0}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->canBeClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_21

    :cond_1f
    const/16 v0, 0x8

    :goto_21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
