.class Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;
.super Lmiuix/appcompat/widget/Spinner$DropDownAdapter;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownPopupAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->getCount()I

    .line 8
    move-result p3

    .line 9
    invoke-static {p2, p1, p3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemBackground(Landroid/view/View;II)V

    .line 12
    return-object p2
.end method
