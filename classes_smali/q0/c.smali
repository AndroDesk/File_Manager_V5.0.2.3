.class public abstract Lq0/c;
.super Lq0/a;
.source "ResourceCursorAdapter.java"


# instance fields
.field public h:I

.field public i:I

.field public j:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lq0/a;-><init>(Landroid/content/Context;)V

    .line 4
    iput p2, p0, Lq0/c;->i:I

    .line 6
    iput p2, p0, Lq0/c;->h:I

    .line 8
    const-string p2, "layout_inflater"

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/LayoutInflater;

    .line 16
    iput-object p1, p0, Lq0/c;->j:Landroid/view/LayoutInflater;

    .line 18
    return-void
.end method
