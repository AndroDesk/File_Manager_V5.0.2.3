.class public final Landroidx/core/widget/f;
.super Landroidx/core/widget/a;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field public final r:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/core/widget/a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/widget/f;->r:Landroid/widget/ListView;

    return-void
.end method
