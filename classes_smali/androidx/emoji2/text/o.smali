.class public final Landroidx/emoji2/text/o;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/o$a;
    }
.end annotation


# instance fields
.field public final a:Lt0/b;

.field public final b:[C

.field public final c:Landroidx/emoji2/text/o$a;

.field public final d:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lt0/b;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/o;->d:Landroid/graphics/Typeface;

    iput-object p2, p0, Landroidx/emoji2/text/o;->a:Lt0/b;

    new-instance p1, Landroidx/emoji2/text/o$a;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/o$a;-><init>(I)V

    iput-object p1, p0, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/o$a;

    const/4 p1, 0x6

    invoke-virtual {p2, p1}, Lt0/c;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget v2, p2, Lt0/c;->a:I

    add-int/2addr v0, v2

    iget-object v2, p2, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p2, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Landroidx/emoji2/text/o;->b:[C

    invoke-virtual {p2, p1}, Lt0/c;->a(I)I

    move-result p1

    if-eqz p1, :cond_47

    iget v0, p2, Lt0/c;->a:I

    add-int/2addr p1, v0

    iget-object v0, p2, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p2, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_48

    :cond_47
    move p1, v1

    :goto_48
    move p2, v1

    :goto_49
    if-ge p2, p1, :cond_89

    new-instance v0, Landroidx/emoji2/text/i;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/i;-><init>(Landroidx/emoji2/text/o;I)V

    invoke-virtual {v0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lt0/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_65

    iget-object v4, v2, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget v2, v2, Lt0/c;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_66

    :cond_65
    move v2, v1

    :goto_66
    iget-object v3, p0, Landroidx/emoji2/text/o;->b:[C

    mul-int/lit8 v4, p2, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    invoke-virtual {v0}, Landroidx/emoji2/text/i;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_76

    move v2, v3

    goto :goto_77

    :cond_76
    move v2, v1

    :goto_77
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v2, v4}, La/b;->m(ZLjava/lang/String;)V

    iget-object v2, p0, Landroidx/emoji2/text/o;->c:Landroidx/emoji2/text/o$a;

    invoke-virtual {v0}, Landroidx/emoji2/text/i;->b()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v0, v1, v4}, Landroidx/emoji2/text/o$a;->a(Landroidx/emoji2/text/i;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_49

    :cond_89
    return-void
.end method
