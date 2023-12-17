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
.method public constructor <init>(Lq0/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq0/a$b;->a:Lq0/a;

    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/a$b;->a:Lq0/a;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lq0/a;->a:Z

    .line 6
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method

.method public final onInvalidated()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq0/a$b;->a:Lq0/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lq0/a;->a:Z

    .line 6
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 9
    return-void
.end method
