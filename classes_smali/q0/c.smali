.class public abstract Lq0/c;
.super Lq0/a;
.source "ResourceCursorAdapter.java"


# instance fields
.field public h:I

.field public i:I

.field public j:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lq0/a;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lq0/c;->i:I

    iput p2, p0, Lq0/c;->h:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lq0/c;->j:Landroid/view/LayoutInflater;

    return-void
.end method
