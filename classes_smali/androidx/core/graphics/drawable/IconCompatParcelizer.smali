.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "IconCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lh1/a;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 6

    .line 1
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 3
    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    .line 6
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_f

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {p0}, Lh1/a;->i()I

    .line 19
    move-result v1

    .line 20
    :goto_13
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 22
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-virtual {p0, v2}, Lh1/a;->h(I)Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1f

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lh1/a;->f()[B

    .line 35
    move-result-object v1

    .line 36
    :goto_23
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 38
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-virtual {p0, v3}, Lh1/a;->h(I)Z

    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2f

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lh1/a;->j()Landroid/os/Parcelable;

    .line 51
    move-result-object v1

    .line 52
    :goto_33
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 54
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 56
    const/4 v4, 0x4

    .line 57
    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_3f

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    invoke-virtual {p0}, Lh1/a;->i()I

    .line 67
    move-result v1

    .line 68
    :goto_43
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 70
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 72
    const/4 v4, 0x5

    .line 73
    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_4f

    .line 79
    goto :goto_53

    .line 80
    :cond_4f
    invoke-virtual {p0}, Lh1/a;->i()I

    .line 83
    move-result v1

    .line 84
    :goto_53
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 86
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 88
    const/4 v4, 0x6

    .line 89
    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_5f

    .line 95
    goto :goto_63

    .line 96
    :cond_5f
    invoke-virtual {p0}, Lh1/a;->j()Landroid/os/Parcelable;

    .line 99
    move-result-object v1

    .line 100
    :goto_63
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 102
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 104
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 106
    const/4 v4, 0x7

    .line 107
    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_71

    .line 113
    goto :goto_75

    .line 114
    :cond_71
    invoke-virtual {p0}, Lh1/a;->k()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    :goto_75
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 120
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 122
    const/16 v4, 0x8

    .line 124
    invoke-virtual {p0, v4}, Lh1/a;->h(I)Z

    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_82

    .line 130
    goto :goto_86

    .line 131
    :cond_82
    invoke-virtual {p0}, Lh1/a;->k()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    :goto_86
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 137
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 139
    invoke-static {p0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 142
    move-result-object p0

    .line 143
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 145
    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 147
    const/4 v1, 0x0

    .line 148
    packed-switch p0, :pswitch_data_e2

    .line 151
    :pswitch_96  #0x0
    goto :goto_e1

    .line 152
    :pswitch_97  #0x3
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 154
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 156
    goto :goto_e1

    .line 157
    :pswitch_9c  #0x2, 0x4, 0x6
    new-instance p0, Ljava/lang/String;

    .line 159
    iget-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 161
    const-string v4, "UTF-16"

    .line 163
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 166
    move-result-object v4

    .line 167
    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 170
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 172
    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 174
    if-ne v3, v2, :cond_e1

    .line 176
    iget-object v2, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 178
    if-nez v2, :cond_e1

    .line 180
    const/4 v2, -0x1

    .line 181
    const-string v3, ":"

    .line 183
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 186
    move-result-object p0

    .line 187
    aget-object p0, p0, v1

    .line 189
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 191
    goto :goto_e1

    .line 192
    :pswitch_bf  #0x1, 0x5
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 194
    if-eqz p0, :cond_c6

    .line 196
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 198
    goto :goto_e1

    .line 199
    :cond_c6
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 201
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 203
    iput v3, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 205
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 207
    array-length p0, p0

    .line 208
    iput p0, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 210
    goto :goto_e1

    .line 211
    :pswitch_d2  #0xffffffff
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 213
    if-eqz p0, :cond_d9

    .line 215
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 217
    goto :goto_e1

    .line 218
    :cond_d9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 220
    const-string v0, "Invalid icon"

    .line 222
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    throw p0

    .line 226
    :cond_e1
    :goto_e1
    return-object v0

    .line 227
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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 12
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 14
    const-string v1, "UTF-16"

    .line 16
    packed-switch v0, :pswitch_data_a2

    .line 19
    :pswitch_12  #0x0
    goto :goto_47

    .line 20
    :pswitch_13  #0x4, 0x6
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 36
    goto :goto_47

    .line 37
    :pswitch_24  #0x3
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 39
    check-cast v0, [B

    .line 41
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 43
    goto :goto_47

    .line 44
    :pswitch_2b  #0x2
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 58
    goto :goto_47

    .line 59
    :pswitch_3a  #0x1, 0x5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 61
    check-cast v0, Landroid/os/Parcelable;

    .line 63
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 65
    goto :goto_47

    .line 66
    :pswitch_41  #0xffffffff
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 68
    check-cast v0, Landroid/os/Parcelable;

    .line 70
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 72
    :goto_47
    const/4 v0, -0x1

    .line 73
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 75
    if-eq v0, v1, :cond_53

    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p1, v0}, Lh1/a;->m(I)V

    .line 81
    invoke-virtual {p1, v1}, Lh1/a;->q(I)V

    .line 84
    :cond_53
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:[B

    .line 86
    if-eqz v0, :cond_5e

    .line 88
    const/4 v1, 0x2

    .line 89
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 92
    invoke-virtual {p1, v0}, Lh1/a;->o([B)V

    .line 95
    :cond_5e
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 97
    if-eqz v0, :cond_69

    .line 99
    const/4 v1, 0x3

    .line 100
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 103
    invoke-virtual {p1, v0}, Lh1/a;->r(Landroid/os/Parcelable;)V

    .line 106
    :cond_69
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 108
    if-eqz v0, :cond_74

    .line 110
    const/4 v1, 0x4

    .line 111
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 114
    invoke-virtual {p1, v0}, Lh1/a;->q(I)V

    .line 117
    :cond_74
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 119
    if-eqz v0, :cond_7f

    .line 121
    const/4 v1, 0x5

    .line 122
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 125
    invoke-virtual {p1, v0}, Lh1/a;->q(I)V

    .line 128
    :cond_7f
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 130
    if-eqz v0, :cond_8a

    .line 132
    const/4 v1, 0x6

    .line 133
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 136
    invoke-virtual {p1, v0}, Lh1/a;->r(Landroid/os/Parcelable;)V

    .line 139
    :cond_8a
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 141
    if-eqz v0, :cond_95

    .line 143
    const/4 v1, 0x7

    .line 144
    invoke-virtual {p1, v1}, Lh1/a;->m(I)V

    .line 147
    invoke-virtual {p1, v0}, Lh1/a;->s(Ljava/lang/String;)V

    .line 150
    :cond_95
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 152
    if-eqz p0, :cond_a1

    .line 154
    const/16 v0, 0x8

    .line 156
    invoke-virtual {p1, v0}, Lh1/a;->m(I)V

    .line 159
    invoke-virtual {p1, p0}, Lh1/a;->s(Ljava/lang/String;)V

    .line 162
    :cond_a1
    return-void

    .line 163
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
