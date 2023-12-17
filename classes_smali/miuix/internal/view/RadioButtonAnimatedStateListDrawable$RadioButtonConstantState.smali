.class public Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;
.super Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
.source "RadioButtonAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioButtonConstantState"
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
    new-instance v0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    .line 6
    return-object v0
.end method
