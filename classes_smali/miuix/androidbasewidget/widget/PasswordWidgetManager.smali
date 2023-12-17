.class public Lmiuix/androidbasewidget/widget/PasswordWidgetManager;
.super Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
.source "PasswordWidgetManager.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mIsChecked:Z

.field private mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mWidgetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100a0

    .line 8
    aput v2, v0, v1

    .line 10
    sput-object v0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->CHECKED_STATE_SET:[I

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    .line 7
    sget p2, Lmiuix/androidbasewidget/R$attr;->miuixAppcompatVisibilityIcon:I

    .line 9
    invoke-static {p1, p2}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    if-nez p2, :cond_2b

    .line 17
    const p2, 0x1010590

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p1, p2, v0}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_23

    .line 27
    sget p2, Lmiuix/androidbasewidget/R$drawable;->miuix_appcompat_ic_visibility_selector_light:I

    .line 29
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    sget p2, Lmiuix/androidbasewidget/R$drawable;->miuix_appcompat_ic_visibility_selector_dark:I

    .line 38
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method


# virtual methods
.method public getWidgetDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    return-object v0
.end method

.method public onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 3
    if-eqz p1, :cond_14

    .line 5
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 21
    :cond_14
    return-void
.end method

.method public onDetached()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onDetached()V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 12
    :cond_b
    return-void
.end method

.method public onWidgetClick(I)V
    .registers 5

    .line 1
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 5
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    .line 7
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 9
    if-eqz p1, :cond_31

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 17
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 23
    iget-boolean v2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    .line 25
    if-eqz v2, :cond_1f

    .line 27
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    .line 30
    move-result-object v2

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 35
    move-result-object v2

    .line 36
    :goto_23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 39
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 45
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 47
    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 50
    :cond_31
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    .line 54
    if-eqz v0, :cond_3a

    .line 56
    sget-object v0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->CHECKED_STATE_SET:[I

    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [I

    .line 62
    :goto_3d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 65
    return-void
.end method
