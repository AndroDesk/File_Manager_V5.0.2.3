.class public final Lk0/a;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/a$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Lk0/a;

.field public static final g:Lk0/a;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Lk0/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    sget-object v0, Lk0/e;->c:Lk0/e$d;

    const/16 v1, 0x200e

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lk0/a;->d:Ljava/lang/String;

    const/16 v1, 0x200f

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lk0/a;->e:Ljava/lang/String;

    new-instance v1, Lk0/a;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lk0/a;-><init>(ZILk0/e$d;)V

    sput-object v1, Lk0/a;->f:Lk0/a;

    new-instance v1, Lk0/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v0}, Lk0/a;-><init>(ZILk0/e$d;)V

    sput-object v1, Lk0/a;->g:Lk0/a;

    return-void
.end method

.method public constructor <init>(ZILk0/e$d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lk0/a;->a:Z

    iput p2, p0, Lk0/a;->b:I

    iput-object p3, p0, Lk0/a;->c:Lk0/d;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .registers 10

    new-instance v0, Lk0/a$a;

    invoke-direct {v0, p0}, Lk0/a$a;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    iput p0, v0, Lk0/a$a;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    move v3, p0

    move v4, v3

    move v5, v4

    :cond_d
    :goto_d
    iget v6, v0, Lk0/a$a;->c:I

    iget v7, v0, Lk0/a$a;->b:I

    if-ge v6, v7, :cond_70

    if-nez v3, :cond_70

    iget-object v7, v0, Lk0/a$a;->a:Ljava/lang/CharSequence;

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lk0/a$a;->d:C

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, v0, Lk0/a$a;->a:Ljava/lang/CharSequence;

    iget v7, v0, Lk0/a$a;->c:I

    invoke-static {v6, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    iget v7, v0, Lk0/a$a;->c:I

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v7

    iput v8, v0, Lk0/a$a;->c:I

    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    goto :goto_4d

    :cond_39
    iget v6, v0, Lk0/a$a;->c:I

    add-int/2addr v6, v2

    iput v6, v0, Lk0/a$a;->c:I

    iget-char v6, v0, Lk0/a$a;->d:C

    const/16 v7, 0x700

    if-ge v6, v7, :cond_49

    sget-object v7, Lk0/a$a;->e:[B

    aget-byte v6, v7, v6

    goto :goto_4d

    :cond_49
    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v6

    :goto_4d
    if-eqz v6, :cond_6b

    if-eq v6, v2, :cond_68

    const/4 v7, 0x2

    if-eq v6, v7, :cond_68

    const/16 v7, 0x9

    if-eq v6, v7, :cond_d

    packed-switch v6, :pswitch_data_92

    goto :goto_6e

    :pswitch_5c  #0x12
    add-int/lit8 v5, v5, -0x1

    move v4, p0

    goto :goto_d

    :pswitch_60  #0x10, 0x11
    add-int/lit8 v5, v5, 0x1

    move v4, v2

    goto :goto_d

    :pswitch_64  #0xe, 0xf
    add-int/lit8 v5, v5, 0x1

    move v4, v1

    goto :goto_d

    :cond_68
    if-nez v5, :cond_6e

    goto :goto_88

    :cond_6b
    if-nez v5, :cond_6e

    goto :goto_8c

    :cond_6e
    :goto_6e
    move v3, v5

    goto :goto_d

    :cond_70
    if-nez v3, :cond_73

    goto :goto_91

    :cond_73
    if-eqz v4, :cond_77

    move p0, v4

    goto :goto_91

    :cond_77
    :goto_77
    iget v4, v0, Lk0/a$a;->c:I

    if-lez v4, :cond_91

    invoke-virtual {v0}, Lk0/a$a;->a()B

    move-result v4

    packed-switch v4, :pswitch_data_a0

    goto :goto_77

    :pswitch_83  #0x12
    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    :pswitch_86  #0x10, 0x11
    if-ne v3, v5, :cond_8e

    :goto_88
    move p0, v2

    goto :goto_91

    :pswitch_8a  #0xe, 0xf
    if-ne v3, v5, :cond_8e

    :goto_8c
    move p0, v1

    goto :goto_91

    :cond_8e
    add-int/lit8 v5, v5, -0x1

    goto :goto_77

    :cond_91
    :goto_91
    return p0

    :pswitch_data_92
    .packed-switch 0xe
        :pswitch_64  #0000000e
        :pswitch_64  #0000000f
        :pswitch_60  #00000010
        :pswitch_60  #00000011
        :pswitch_5c  #00000012
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0xe
        :pswitch_8a  #0000000e
        :pswitch_8a  #0000000f
        :pswitch_86  #00000010
        :pswitch_86  #00000011
        :pswitch_83  #00000012
    .end packed-switch
.end method

.method public static b(Ljava/lang/CharSequence;)I
    .registers 7

    new-instance v0, Lk0/a$a;

    invoke-direct {v0, p0}, Lk0/a$a;-><init>(Ljava/lang/CharSequence;)V

    iget p0, v0, Lk0/a$a;->b:I

    iput p0, v0, Lk0/a$a;->c:I

    const/4 p0, 0x0

    move v1, p0

    :goto_b
    move v2, v1

    :cond_c
    :goto_c
    iget v3, v0, Lk0/a$a;->c:I

    const/4 v4, 0x1

    if-lez v3, :cond_41

    invoke-virtual {v0}, Lk0/a$a;->a()B

    move-result v3

    if-eqz v3, :cond_39

    if-eq v3, v4, :cond_32

    const/4 v5, 0x2

    if-eq v3, v5, :cond_32

    const/16 v5, 0x9

    if-eq v3, v5, :cond_c

    packed-switch v3, :pswitch_data_42

    if-nez v1, :cond_c

    goto :goto_3f

    :pswitch_26  #0x12
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :pswitch_29  #0x10, 0x11
    if-ne v1, v2, :cond_2f

    goto :goto_34

    :pswitch_2c  #0xe, 0xf
    if-ne v1, v2, :cond_2f

    goto :goto_3b

    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_32
    if-nez v2, :cond_36

    :goto_34
    move p0, v4

    goto :goto_41

    :cond_36
    if-nez v1, :cond_c

    goto :goto_3f

    :cond_39
    if-nez v2, :cond_3d

    :goto_3b
    const/4 p0, -0x1

    goto :goto_41

    :cond_3d
    if-nez v1, :cond_c

    :goto_3f
    move v1, v2

    goto :goto_b

    :cond_41
    :goto_41
    return p0

    :pswitch_data_42
    .packed-switch 0xe
        :pswitch_2c  #0000000e
        :pswitch_2c  #0000000f
        :pswitch_29  #00000010
        :pswitch_29  #00000011
        :pswitch_26  #00000012
    .end packed-switch
.end method

.method public static c()Lk0/a;
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget v1, Lk0/f;->a:I

    invoke-static {v0}, Lk0/f$a;->a(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_14

    sget-object v0, Lk0/a;->g:Lk0/a;

    goto :goto_16

    :cond_14
    sget-object v0, Lk0/a;->f:Lk0/a;

    :goto_16
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/CharSequence;Lk0/d;)Landroid/text/SpannableStringBuilder;
    .registers 9

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    check-cast p2, Lk0/e$c;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0}, Lk0/e$c;->b(Ljava/lang/CharSequence;I)Z

    move-result p2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v2, p0, Lk0/a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    move v1, v3

    :cond_1c
    const/4 v2, -0x1

    const-string v4, ""

    if-eqz v1, :cond_52

    if-eqz p2, :cond_26

    sget-object v1, Lk0/e;->b:Lk0/e$d;

    goto :goto_28

    :cond_26
    sget-object v1, Lk0/e;->a:Lk0/e$d;

    :goto_28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, p1, v5}, Lk0/e$c;->b(Ljava/lang/CharSequence;I)Z

    move-result v1

    iget-boolean v5, p0, Lk0/a;->a:Z

    if-nez v5, :cond_3f

    if-nez v1, :cond_3c

    invoke-static {p1}, Lk0/a;->a(Ljava/lang/CharSequence;)I

    move-result v5

    if-ne v5, v3, :cond_3f

    :cond_3c
    sget-object v1, Lk0/a;->d:Ljava/lang/String;

    goto :goto_4f

    :cond_3f
    iget-boolean v5, p0, Lk0/a;->a:Z

    if-eqz v5, :cond_4e

    if-eqz v1, :cond_4b

    invoke-static {p1}, Lk0/a;->a(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v2, :cond_4e

    :cond_4b
    sget-object v1, Lk0/a;->e:Ljava/lang/String;

    goto :goto_4f

    :cond_4e
    move-object v1, v4

    :goto_4f
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_52
    iget-boolean v1, p0, Lk0/a;->a:Z

    if-eq p2, v1, :cond_69

    if-eqz p2, :cond_5b

    const/16 v1, 0x202b

    goto :goto_5d

    :cond_5b
    const/16 v1, 0x202a

    :goto_5d
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_6c

    :cond_69
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_6c
    if-eqz p2, :cond_71

    sget-object p2, Lk0/e;->b:Lk0/e$d;

    goto :goto_73

    :cond_71
    sget-object p2, Lk0/e;->a:Lk0/e$d;

    :goto_73
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lk0/e$c;->b(Ljava/lang/CharSequence;I)Z

    move-result p2

    iget-boolean v1, p0, Lk0/a;->a:Z

    if-nez v1, :cond_8a

    if-nez p2, :cond_87

    invoke-static {p1}, Lk0/a;->b(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v3, :cond_8a

    :cond_87
    sget-object v4, Lk0/a;->d:Ljava/lang/String;

    goto :goto_98

    :cond_8a
    iget-boolean v1, p0, Lk0/a;->a:Z

    if-eqz v1, :cond_98

    if-eqz p2, :cond_96

    invoke-static {p1}, Lk0/a;->b(Ljava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v2, :cond_98

    :cond_96
    sget-object v4, Lk0/a;->e:Ljava/lang/String;

    :cond_98
    :goto_98
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method
