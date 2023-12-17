.class public final Landroidx/appcompat/widget/v0;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroidx/appcompat/widget/v0;->a:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 1
    instance-of v0, p0, Landroidx/appcompat/widget/v0;

    .line 3
    if-nez v0, :cond_11

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroidx/appcompat/widget/x0;

    .line 11
    if-nez v0, :cond_11

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    sget p0, Landroidx/appcompat/widget/g1;->a:I

    .line 18
    :cond_11
    return-void
.end method
