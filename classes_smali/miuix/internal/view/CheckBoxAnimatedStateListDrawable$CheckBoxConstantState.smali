.class public Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;
.super Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
.source "CheckBoxAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckBoxConstantState"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public newAnimatedStateListDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    new-instance v0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    .line 6
    return-object v0
.end method
