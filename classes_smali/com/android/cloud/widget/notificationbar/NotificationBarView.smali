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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {p0, p1}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->initNotificationBarView(Landroid/content/Context;)V

    return-void
.end method

.method private initNotificationBarView(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0d0039

    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    const p1, 0x7f0a023f

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/LinearLayout;

    .line 20
    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotifyLayout:Landroid/widget/LinearLayout;

    .line 22
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const p1, 0x7f0a02ea

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/TextView;

    .line 34
    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mMessageTv:Landroid/widget/TextView;

    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 40
    const p1, 0x7f0a02e6

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/ImageView;

    .line 49
    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mRemoveBarIv:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private setColorStyleByType(Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/cloud/widget/notificationbar/NotificationBarView$1;->$SwitchMap$com$android$cloud$widget$notificationbar$AbsNotificationBar$BarType:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f0604e8

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0604e9

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    const v2, 0x7f0806be

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mMessageTv:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object p1

    .line 51
    const v2, 0x7f0800db

    .line 54
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 60
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotifyLayout:Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mRemoveBarIv:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a023f

    .line 8
    if-eq p1, v0, :cond_23

    .line 10
    const v0, 0x7f0a02e6

    .line 13
    if-eq p1, v0, :cond_f

    .line 15
    goto :goto_2c

    .line 16
    :cond_f
    iget-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

    .line 18
    if-eqz p1, :cond_2c

    .line 20
    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->hideClick(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/android/cloud/util/helper/NotificationBarHelper;->saveLastCloseStorageFullNotifyBarTime(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->hide()V

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

    .line 38
    if-eqz p1, :cond_2c

    .line 40
    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->click(Landroid/content/Context;)V

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public show(Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

    .line 3
    invoke-virtual {p1}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->getBarType()Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->setColorStyleByType(Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;)V

    .line 10
    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mMessageTv:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p1}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->getMessage()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mRemoveBarIv:Landroid/widget/ImageView;

    .line 21
    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/NotificationBarView;->mNotificationBar:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;

    .line 23
    invoke-virtual {v0}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->canBeClosed()Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1f

    .line 30
    move v0, v1

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/16 v0, 0x8

    .line 34
    :goto_21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method
