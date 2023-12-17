.class public final Ld0/m;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/m$c;,
        Ld0/m$a;,
        Ld0/m$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ld0/m$c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Ld0/m$c;->a:Ljava/lang/CharSequence;

    .line 6
    iput-object v0, p0, Ld0/m;->a:Ljava/lang/CharSequence;

    .line 8
    iget-object v0, p1, Ld0/m$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 10
    iput-object v0, p0, Ld0/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 12
    iget-object v0, p1, Ld0/m$c;->c:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Ld0/m;->c:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Ld0/m$c;->d:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Ld0/m;->d:Ljava/lang/String;

    .line 20
    iget-boolean v0, p1, Ld0/m$c;->e:Z

    .line 22
    iput-boolean v0, p0, Ld0/m;->e:Z

    .line 24
    iget-boolean p1, p1, Ld0/m$c;->f:Z

    .line 26
    iput-boolean p1, p0, Ld0/m;->f:Z

    .line 28
    return-void
.end method
