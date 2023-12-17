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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ld0/m$c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ld0/m$c;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Ld0/m;->a:Ljava/lang/CharSequence;

    iget-object v0, p1, Ld0/m$c;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Ld0/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v0, p1, Ld0/m$c;->c:Ljava/lang/String;

    iput-object v0, p0, Ld0/m;->c:Ljava/lang/String;

    iget-object v0, p1, Ld0/m$c;->d:Ljava/lang/String;

    iput-object v0, p0, Ld0/m;->d:Ljava/lang/String;

    iget-boolean v0, p1, Ld0/m$c;->e:Z

    iput-boolean v0, p0, Ld0/m;->e:Z

    iget-boolean p1, p1, Ld0/m$c;->f:Z

    iput-boolean p1, p0, Ld0/m;->f:Z

    return-void
.end method
