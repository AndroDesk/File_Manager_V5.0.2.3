.class public final Lq0/a$b;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lq0/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lq0/a;)V
    .registers 2

    iput-object p1, p0, Lq0/a$b;->a:Lq0/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    iget-object v0, p0, Lq0/a$b;->a:Lq0/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lq0/a;->a:Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 3

    iget-object v0, p0, Lq0/a$b;->a:Lq0/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lq0/a;->a:Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method