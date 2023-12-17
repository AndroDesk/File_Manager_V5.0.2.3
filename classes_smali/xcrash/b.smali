.class public final Lxcrash/b;
.super Ljava/lang/Object;
.source "ActivityMonitor.java"


# static fields
.field public static final c:Lxcrash/b;


# instance fields
.field public a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lxcrash/b;

    .line 3
    invoke-direct {v0}, Lxcrash/b;-><init>()V

    .line 6
    sput-object v0, Lxcrash/b;->c:Lxcrash/b;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lxcrash/b;->a:Ljava/util/LinkedList;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lxcrash/b;->b:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lxcrash/b;->a:Ljava/util/LinkedList;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_18

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/app/Activity;

    .line 21
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    iget-object v0, p0, Lxcrash/b;->a:Ljava/util/LinkedList;

    .line 27
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 30
    :cond_1d
    return-void
.end method
