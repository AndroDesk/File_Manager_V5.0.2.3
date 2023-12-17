.class public Lmiuix/androidbasewidget/widget/LinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static sInstance:Lmiuix/androidbasewidget/widget/LinkMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    sget-object v0, Lmiuix/androidbasewidget/widget/LinkMovementMethod;->sInstance:Lmiuix/androidbasewidget/widget/LinkMovementMethod;

    if-nez v0, :cond_b

    new-instance v0, Lmiuix/androidbasewidget/widget/LinkMovementMethod;

    invoke-direct {v0}, Lmiuix/androidbasewidget/widget/LinkMovementMethod;-><init>()V

    sput-object v0, Lmiuix/androidbasewidget/widget/LinkMovementMethod;->sInstance:Lmiuix/androidbasewidget/widget/LinkMovementMethod;

    :cond_b
    sget-object v0, Lmiuix/androidbasewidget/widget/LinkMovementMethod;->sInstance:Lmiuix/androidbasewidget/widget/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_17

    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_17

    const/4 p1, 0x0

    return p1

    :cond_17
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
