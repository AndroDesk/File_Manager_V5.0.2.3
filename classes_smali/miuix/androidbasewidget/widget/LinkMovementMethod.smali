.class public Lmiuix/androidbasewidget/widget/LinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static sInstance:Lmiuix/androidbasewidget/widget/LinkMovementMethod;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/androidbasewidget/widget/LinkMovementMethod;->sInstance:Lmiuix/androidbasewidget/widget/LinkMovementMethod;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lmiuix/androidbasewidget/widget/LinkMovementMethod;

    .line 7
    invoke-direct {v0}, Lmiuix/androidbasewidget/widget/LinkMovementMethod;-><init>()V

    .line 10
    sput-object v0, Lmiuix/androidbasewidget/widget/LinkMovementMethod;->sInstance:Lmiuix/androidbasewidget/widget/LinkMovementMethod;

    .line 12
    :cond_b
    sget-object v0, Lmiuix/androidbasewidget/widget/LinkMovementMethod;->sInstance:Lmiuix/androidbasewidget/widget/LinkMovementMethod;

    .line 14
    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_9

    .line 8
    if-nez v0, :cond_17

    .line 10
    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 13
    move-result v0

    .line 14
    float-to-int v0, v0

    .line 15
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    if-gez v0, :cond_17

    .line 22
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_17
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 27
    move-result p1

    .line 28
    return p1
.end method
