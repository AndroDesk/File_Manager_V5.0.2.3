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

    .line 1
    sget-object v0, Lk0/e;->c:Lk0/e$d;

    .line 3
    const/16 v1, 0x200e

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lk0/a;->d:Ljava/lang/String;

    .line 11
    const/16 v1, 0x200f

    .line 13
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lk0/a;->e:Ljava/lang/String;

    .line 19
    new-instance v1, Lk0/a;

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-direct {v1, v2, v3, v0}, Lk0/a;-><init>(ZILk0/e$d;)V

    .line 26
    sput-object v1, Lk0/a;->f:Lk0/a;

    .line 28
    new-instance v1, Lk0/a;

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {v1, v2, v3, v0}, Lk0/a;-><init>(ZILk0/e$d;)V

    .line 34
    sput-object v1, Lk0/a;->g:Lk0/a;

    .line 36
    return-void
.end method

.method public constructor <init>(ZILk0/e$d;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lk0/a;->a:Z

    .line 6
    iput p2, p0, Lk0/a;->b:I

    .line 8
    iput-object p3, p0, Lk0/a;->c:Lk0/d;

    .line 10
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .registers 10

    .line 1
    new-instance v0, Lk0/a$a;

    .line 3
    invoke-direct {v0, p0}, Lk0/a$a;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    const/4 p0, 0x0

    .line 7
    iput p0, v0, Lk0/a$a;->c:I

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x1

    .line 11
    move v3, p0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :cond_d
    :goto_d
    iget v6, v0, Lk0/a$a;->c:I

    .line 16
    iget v7, v0, Lk0/a$a;->b:I

    .line 18
    if-ge v6, v7, :cond_70

    .line 20
    if-nez v3, :cond_70

    .line 22
    iget-object v7, v0, Lk0/a$a;->a:Ljava/lang/CharSequence;

    .line 24
    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 27
    move-result v6

    .line 28
    iput-char v6, v0, Lk0/a$a;->d:C

    .line 30
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_39

    .line 36
    iget-object v6, v0, Lk0/a$a;->a:Ljava/lang/CharSequence;

    .line 38
    iget v7, v0, Lk0/a$a;->c:I

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 43
    move-result v6

    .line 44
    iget v7, v0, Lk0/a$a;->c:I

    .line 46
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 49
    move-result v8

    .line 50
    add-int/2addr v8, v7

    .line 51
    iput v8, v0, Lk0/a$a;->c:I

    .line 53
    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(I)B

    .line 56
    move-result v6

    .line 57
    goto :goto_4d

    .line 58
    :cond_39
    iget v6, v0, Lk0/a$a;->c:I

    .line 60
    add-int/2addr v6, v2

    .line 61
    iput v6, v0, Lk0/a$a;->c:I

    .line 63
    iget-char v6, v0, Lk0/a$a;->d:C

    .line 65
    const/16 v7, 0x700

    .line 67
    if-ge v6, v7, :cond_49

    .line 69
    sget-object v7, Lk0/a$a;->e:[B

    .line 71
    aget-byte v6, v7, v6

    .line 73
    goto :goto_4d

    .line 74
    :cond_49
    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(C)B

    .line 77
    move-result v6

    .line 78
    :goto_4d
    if-eqz v6, :cond_6b

    .line 80
    if-eq v6, v2, :cond_68

    .line 82
    const/4 v7, 0x2

    .line 83
    if-eq v6, v7, :cond_68

    .line 85
    const/16 v7, 0x9

    .line 87
    if-eq v6, v7, :cond_d

    .line 89
    packed-switch v6, :pswitch_data_92

    .line 92
    goto :goto_6e

    .line 93
    :pswitch_5c  #0x12
    add-int/lit8 v5, v5, -0x1

    .line 95
    move v4, p0

    .line 96
    goto :goto_d

    .line 97
    :pswitch_60  #0x10, 0x11
    add-int/lit8 v5, v5, 0x1

    .line 99
    move v4, v2

    .line 100
    goto :goto_d

    .line 101
    :pswitch_64  #0xe, 0xf
    add-int/lit8 v5, v5, 0x1

    .line 103
    move v4, v1

    .line 104
    goto :goto_d

    .line 105
    :cond_68
    if-nez v5, :cond_6e

    .line 107
    goto :goto_88

    .line 108
    :cond_6b
    if-nez v5, :cond_6e

    .line 110
    goto :goto_8c

    .line 111
    :cond_6e
    :goto_6e
    move v3, v5

    .line 112
    goto :goto_d

    .line 113
    :cond_70
    if-nez v3, :cond_73

    .line 115
    goto :goto_91

    .line 116
    :cond_73
    if-eqz v4, :cond_77

    .line 118
    move p0, v4

    .line 119
    goto :goto_91

    .line 120
    :cond_77
    :goto_77
    iget v4, v0, Lk0/a$a;->c:I

    .line 122
    if-lez v4, :cond_91

    .line 124
    invoke-virtual {v0}, Lk0/a$a;->a()B

    .line 127
    move-result v4

    .line 128
    packed-switch v4, :pswitch_data_a0

    .line 131
    goto :goto_77

    .line 132
    :pswitch_83  #0x12
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto :goto_77

    .line 135
    :pswitch_86  #0x10, 0x11
    if-ne v3, v5, :cond_8e

    .line 137
    :goto_88
    move p0, v2

    .line 138
    goto :goto_91

    .line 139
    :pswitch_8a  #0xe, 0xf
    if-ne v3, v5, :cond_8e

    .line 141
    :goto_8c
    move p0, v1

    .line 142
    goto :goto_91

    .line 143
    :cond_8e
    add-int/lit8 v5, v5, -0x1

    .line 145
    goto :goto_77

    .line 146
    :cond_91
    :goto_91
    return p0

    .line 147
    :pswitch_data_92
    .packed-switch 0xe
        :pswitch_64  #0000000e
        :pswitch_64  #0000000f
        :pswitch_60  #00000010
        :pswitch_60  #00000011
        :pswitch_5c  #00000012
    .end packed-switch

    .line 161
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

    .line 1
    new-instance v0, Lk0/a$a;

    .line 3
    invoke-direct {v0, p0}, Lk0/a$a;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    iget p0, v0, Lk0/a$a;->b:I

    .line 8
    iput p0, v0, Lk0/a$a;->c:I

    .line 10
    const/4 p0, 0x0

    .line 11
    move v1, p0

    .line 12
    :goto_b
    move v2, v1

    .line 13
    :cond_c
    :goto_c
    iget v3, v0, Lk0/a$a;->c:I

    .line 15
    const/4 v4, 0x1

    .line 16
    if-lez v3, :cond_41

    .line 18
    invoke-virtual {v0}, Lk0/a$a;->a()B

    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_39

    .line 24
    if-eq v3, v4, :cond_32

    .line 26
    const/4 v5, 0x2

    .line 27
    if-eq v3, v5, :cond_32

    .line 29
    const/16 v5, 0x9

    .line 31
    if-eq v3, v5, :cond_c

    .line 33
    packed-switch v3, :pswitch_data_42

    .line 36
    if-nez v1, :cond_c

    .line 38
    goto :goto_3f

    .line 39
    :pswitch_26  #0x12
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_c

    .line 42
    :pswitch_29  #0x10, 0x11
    if-ne v1, v2, :cond_2f

    .line 44
    goto :goto_34

    .line 45
    :pswitch_2c  #0xe, 0xf
    if-ne v1, v2, :cond_2f

    .line 47
    goto :goto_3b

    .line 48
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    .line 50
    goto :goto_c

    .line 51
    :cond_32
    if-nez v2, :cond_36

    .line 53
    :goto_34
    move p0, v4

    .line 54
    goto :goto_41

    .line 55
    :cond_36
    if-nez v1, :cond_c

    .line 57
    goto :goto_3f

    .line 58
    :cond_39
    if-nez v2, :cond_3d

    .line 60
    :goto_3b
    const/4 p0, -0x1

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    if-nez v1, :cond_c

    .line 64
    :goto_3f
    move v1, v2

    .line 65
    goto :goto_b

    .line 66
    :cond_41
    :goto_41
    return p0

    .line 67
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

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lk0/f;->a:I

    .line 7
    invoke-static {v0}, Lk0/f$a;->a(Ljava/util/Locale;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    if-eqz v1, :cond_14

    .line 18
    sget-object v0, Lk0/a;->g:Lk0/a;

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    sget-object v0, Lk0/a;->f:Lk0/a;

    .line 23
    :goto_16
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/CharSequence;Lk0/d;)Landroid/text/SpannableStringBuilder;
    .registers 9

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v0

    .line 9
    check-cast p2, Lk0/e$c;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p2, p1, v0}, Lk0/e$c;->b(Ljava/lang/CharSequence;I)Z

    .line 15
    move-result p2

    .line 16
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 18
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 21
    iget v2, p0, Lk0/a;->b:I

    .line 23
    and-int/lit8 v2, v2, 0x2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v2, :cond_1c

    .line 28
    move v1, v3

    .line 29
    :cond_1c
    const/4 v2, -0x1

    .line 30
    const-string v4, ""

    .line 32
    if-eqz v1, :cond_52

    .line 34
    if-eqz p2, :cond_26

    .line 36
    sget-object v1, Lk0/e;->b:Lk0/e$d;

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    sget-object v1, Lk0/e;->a:Lk0/e$d;

    .line 41
    :goto_28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 44
    move-result v5

    .line 45
    invoke-virtual {v1, p1, v5}, Lk0/e$c;->b(Ljava/lang/CharSequence;I)Z

    .line 48
    move-result v1

    .line 49
    iget-boolean v5, p0, Lk0/a;->a:Z

    .line 51
    if-nez v5, :cond_3f

    .line 53
    if-nez v1, :cond_3c

    .line 55
    invoke-static {p1}, Lk0/a;->a(Ljava/lang/CharSequence;)I

    .line 58
    move-result v5

    .line 59
    if-ne v5, v3, :cond_3f

    .line 61
    :cond_3c
    sget-object v1, Lk0/a;->d:Ljava/lang/String;

    .line 63
    goto :goto_4f

    .line 64
    :cond_3f
    iget-boolean v5, p0, Lk0/a;->a:Z

    .line 66
    if-eqz v5, :cond_4e

    .line 68
    if-eqz v1, :cond_4b

    .line 70
    invoke-static {p1}, Lk0/a;->a(Ljava/lang/CharSequence;)I

    .line 73
    move-result v1

    .line 74
    if-ne v1, v2, :cond_4e

    .line 76
    :cond_4b
    sget-object v1, Lk0/a;->e:Ljava/lang/String;

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move-object v1, v4

    .line 80
    :goto_4f
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 83
    :cond_52
    iget-boolean v1, p0, Lk0/a;->a:Z

    .line 85
    if-eq p2, v1, :cond_69

    .line 87
    if-eqz p2, :cond_5b

    .line 89
    const/16 v1, 0x202b

    .line 91
    goto :goto_5d

    .line 92
    :cond_5b
    const/16 v1, 0x202a

    .line 94
    :goto_5d
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 97
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    const/16 v1, 0x202c

    .line 102
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 105
    goto :goto_6c

    .line 106
    :cond_69
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    :goto_6c
    if-eqz p2, :cond_71

    .line 111
    sget-object p2, Lk0/e;->b:Lk0/e$d;

    .line 113
    goto :goto_73

    .line 114
    :cond_71
    sget-object p2, Lk0/e;->a:Lk0/e$d;

    .line 116
    :goto_73
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 119
    move-result v1

    .line 120
    invoke-virtual {p2, p1, v1}, Lk0/e$c;->b(Ljava/lang/CharSequence;I)Z

    .line 123
    move-result p2

    .line 124
    iget-boolean v1, p0, Lk0/a;->a:Z

    .line 126
    if-nez v1, :cond_8a

    .line 128
    if-nez p2, :cond_87

    .line 130
    invoke-static {p1}, Lk0/a;->b(Ljava/lang/CharSequence;)I

    .line 133
    move-result v1

    .line 134
    if-ne v1, v3, :cond_8a

    .line 136
    :cond_87
    sget-object v4, Lk0/a;->d:Ljava/lang/String;

    .line 138
    goto :goto_98

    .line 139
    :cond_8a
    iget-boolean v1, p0, Lk0/a;->a:Z

    .line 141
    if-eqz v1, :cond_98

    .line 143
    if-eqz p2, :cond_96

    .line 145
    invoke-static {p1}, Lk0/a;->b(Ljava/lang/CharSequence;)I

    .line 148
    move-result p1

    .line 149
    if-ne p1, v2, :cond_98

    .line 151
    :cond_96
    sget-object v4, Lk0/a;->e:Ljava/lang/String;

    .line 153
    :cond_98
    :goto_98
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    return-object v0
.end method
