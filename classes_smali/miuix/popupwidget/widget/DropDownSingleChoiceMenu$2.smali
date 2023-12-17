.class Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;
.super Landroid/widget/ArrayAdapter;
.source "DropDownSingleChoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 6
    return-void
.end method

.method private getViewInner(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;
    .registers 8

    .line 1
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    invoke-virtual {p4}, Landroid/view/View;->getPaddingStart()I

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    .line 11
    invoke-virtual {p4}, Landroid/view/View;->getPaddingEnd()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne p2, v2, :cond_27

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p2

    .line 25
    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    .line 27
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result p1

    .line 39
    goto :goto_68

    .line 40
    :cond_27
    if-nez p3, :cond_3e

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p2

    .line 46
    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    .line 48
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result p2

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object p1

    .line 56
    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    .line 58
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    move-result p1

    .line 62
    goto :goto_68

    .line 63
    :cond_3e
    sub-int/2addr p2, v2

    .line 64
    if-ne p3, p2, :cond_56

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object p2

    .line 70
    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    .line 72
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    move-result p2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object p1

    .line 80
    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    .line 82
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    move-result p1

    .line 86
    goto :goto_68

    .line 87
    :cond_56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object p2

    .line 91
    sget p3, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    .line 93
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 96
    move-result p2

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    move-result p1

    .line 105
    :goto_68
    invoke-virtual {p4, v0, p2, v1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 108
    return-object p4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p3

    .line 9
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, p3, v0, p1, p2}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$2;->getViewInner(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x1

    .line 18
    new-array p3, p2, [Landroid/view/View;

    .line 20
    const/4 v0, 0x0

    .line 21
    aput-object p1, p3, v0

    .line 23
    invoke-static {p3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 26
    move-result-object p3

    .line 27
    invoke-interface {p3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 30
    move-result-object p3

    .line 31
    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 33
    const/high16 v2, 0x3f800000  # 1.0f

    .line 35
    invoke-interface {p3, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 38
    move-result-object p3

    .line 39
    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 41
    invoke-interface {p3, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 44
    new-array p2, p2, [Landroid/view/View;

    .line 46
    aput-object p1, p2, v0

    .line 48
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 55
    move-result-object p2

    .line 56
    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 58
    invoke-interface {p2, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 61
    move-result-object p2

    .line 62
    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    .line 64
    invoke-interface {p2, p1, p3}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 67
    return-object p1
.end method
