.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "IconCompatParcelizer.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lh1/a;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 6

    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lh1/a;->i()I

    move-result v1

    :goto_13
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Lh1/a;->f()[B

    move-result-object v1

    :goto_23
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lh1/a;->h(I)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_33

    :cond_2f
    invoke-virtual {p0}, Lh1/a;->j()Landroid/os/Parcelable;

    move-result-object v1

    :goto_33
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {p0}, Lh1/a;->i()I

    move-result v1

    :goto_43
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_53

    :cond_4f
    invoke-virtual {p0}, Lh1/a;->i()I

    move-result v1

    :goto_53
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_63

    :cond_5f
    invoke-virtual {p0}, Lh1/a;->j()Landroid/os/Parcelable;

    move-result-object v1

    :goto_63
    check-cast v1, Landroid/content/res/ColorStateList;

    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    move-result v4

    if-nez v4, :cond_71

    goto :goto_75

    :cond_71
    invoke-virtual {p0}, Lh1/a;->k()Ljava/lang/String;

    move-result-object v1

    :goto_75
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    move-result v4

    if-nez v4, :cond_82

    goto :goto_86

    :cond_82
    invoke-virtual {p0}, Lh1/a;->k()Ljava/lang/String;

    move-result-object v1

    :goto_86
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_e2

    :pswitch_96  #0x0
    goto :goto_e1

    :pswitch_97  #0x3
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_e1

    :pswitch_9c  #0x2, 0x4, 0x6
    new-instance p0, Ljava/lang/String;

    iget-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    const-string v4, "UTF-16"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    if-ne v3, v2, :cond_e1

    iget-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    if-nez v2, :cond_e1

    const/4 v2, -0x1

    const-string v3, ":"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    goto :goto_e1

    :pswitch_bf  #0x1, 0x5
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz p0, :cond_c6

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_e1

    :cond_c6
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    iput v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    array-length p0, p0

    iput p0, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    goto :goto_e1

    :pswitch_d2  #0xffffffff
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz p0, :cond_d9

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_e1

    :cond_d9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid icon"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e1
    :goto_e1
    return-object v0

    :pswitch_data_e2
    .packed-switch -0x1
        :pswitch_d2  #ffffffff
        :pswitch_96  #00000000
        :pswitch_bf  #00000001
        :pswitch_9c  #00000002
        :pswitch_97  #00000003
        :pswitch_9c  #00000004
        :pswitch_bf  #00000005
        :pswitch_9c  #00000006
    .end packed-switch
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Lh1/a;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const-string v1, "UTF-16"

    packed-switch v0, :pswitch_data_a2

    :pswitch_12  #0x0
    goto :goto_47

    :pswitch_13  #0x4, 0x6
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    goto :goto_47

    :pswitch_24  #0x3
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    goto :goto_47

    :pswitch_2b  #0x2
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    goto :goto_47

    :pswitch_3a  #0x1, 0x5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    goto :goto_47

    :pswitch_41  #0xffffffff
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    :goto_47
    const/4 v0, -0x1

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    if-eq v0, v1, :cond_53

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lh1/a;->m(I)V

    invoke-virtual {p1, v1}, Lh1/a;->q(I)V

    :cond_53
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    if-eqz v0, :cond_5e

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->o([B)V

    :cond_5e
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz v0, :cond_69

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->r(Landroid/os/Parcelable;)V

    :cond_69
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    if-eqz v0, :cond_74

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->q(I)V

    :cond_74
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    if-eqz v0, :cond_7f

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->q(I)V

    :cond_7f
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8a

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->r(Landroid/os/Parcelable;)V

    :cond_8a
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    if-eqz v0, :cond_95

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    invoke-virtual {p1, v0}, Lh1/a;->s(Ljava/lang/String;)V

    :cond_95
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    if-eqz p0, :cond_a1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lh1/a;->m(I)V

    invoke-virtual {p1, p0}, Lh1/a;->s(Ljava/lang/String;)V

    :cond_a1
    return-void

    :pswitch_data_a2
    .packed-switch -0x1
        :pswitch_41  #ffffffff
        :pswitch_12  #00000000
        :pswitch_3a  #00000001
        :pswitch_2b  #00000002
        :pswitch_24  #00000003
        :pswitch_13  #00000004
        :pswitch_3a  #00000005
        :pswitch_13  #00000006
    .end packed-switch
.end method
