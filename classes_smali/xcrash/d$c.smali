.class public final Lxcrash/d$c;
.super Ljava/util/TimerTask;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxcrash/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lxcrash/d;


# direct methods
.method public constructor <init>(Lxcrash/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lxcrash/d$c;->a:Lxcrash/d;

    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lxcrash/d$c;->a:Lxcrash/d;

    .line 3
    invoke-virtual {v0}, Lxcrash/d;->c()V

    .line 6
    return-void
.end method
