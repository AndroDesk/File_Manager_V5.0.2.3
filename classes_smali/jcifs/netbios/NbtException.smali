.class public Ljcifs/netbios/NbtException;
.super Ljava/io/IOException;
.source "NbtException.java"


# static fields
.field public static final ACT_ERR:I = 0x6

.field public static final CALLED_NOT_PRESENT:I = 0x82

.field public static final CFT_ERR:I = 0x7

.field public static final CONNECTION_REFUSED:I = -0x1

.field public static final ERR_NAM_SRVC:I = 0x1

.field public static final ERR_SSN_SRVC:I = 0x2

.field public static final FMT_ERR:I = 0x1

.field public static final IMP_ERR:I = 0x4

.field public static final NOT_LISTENING_CALLED:I = 0x80

.field public static final NOT_LISTENING_CALLING:I = 0x81

.field public static final NO_RESOURCES:I = 0x83

.field public static final RFS_ERR:I = 0x5

.field public static final SRV_ERR:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final UNSPECIFIED:I = 0x8f


# instance fields
.field public errorClass:I

.field public errorCode:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-static {p1, p2}, Ljcifs/netbios/NbtException;->getErrorString(II)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    iput p1, p0, Ljcifs/netbios/NbtException;->errorClass:I

    .line 10
    iput p2, p0, Ljcifs/netbios/NbtException;->errorCode:I

    .line 12
    return-void
.end method

.method public static getErrorString(II)Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p0, :cond_df

    .line 3
    const-string v0, "Unknown error code: "

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p0, v1, :cond_b4

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p0, v1, :cond_1f

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, ""

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "unknown error class: "

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    goto/16 :goto_e1

    .line 32
    :cond_1f
    const-string p0, "ERR_SSN_SRVC/"

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq p1, v1, :cond_a1

    .line 37
    const/16 v1, 0x8f

    .line 39
    if-eq p1, v1, :cond_8e

    .line 41
    packed-switch p1, :pswitch_data_e2

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    goto/16 :goto_e1

    .line 65
    :pswitch_40  #0x83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string p0, "Called name present, but insufficient resources"

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    goto/16 :goto_e1

    .line 85
    :pswitch_54  #0x82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    const-string p0, "Called name not present"

    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    goto/16 :goto_e1

    .line 105
    :pswitch_68  #0x81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    const-string p0, "Not listening for calling name"

    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    goto :goto_e1

    .line 124
    :pswitch_7b  #0x80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    const-string p0, "Not listening on called name"

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    goto :goto_e1

    .line 143
    :cond_8e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 149
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    const-string p0, "Unspecified error"

    .line 154
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p0

    .line 161
    goto :goto_e1

    .line 162
    :cond_a1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 168
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    const-string p0, "Connection refused"

    .line 173
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p0

    .line 180
    goto :goto_e1

    .line 181
    :cond_b4
    const-string p0, "ERR_NAM_SRVC/"

    .line 183
    if-eq p1, v1, :cond_b9

    .line 185
    goto :goto_cb

    .line 186
    :cond_b9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 192
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    const-string p0, "FMT_ERR: Format Error"

    .line 197
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object p0

    .line 204
    :goto_cb
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 210
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p0

    .line 223
    goto :goto_e1

    .line 224
    :cond_df
    const-string p0, "SUCCESS"

    .line 226
    :goto_e1
    return-object p0

    .line 227
    :pswitch_data_e2
    .packed-switch 0x80
        :pswitch_7b  #00000080
        :pswitch_68  #00000081
        :pswitch_54  #00000082
        :pswitch_40  #00000083
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "errorClass="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v2, p0, Ljcifs/netbios/NbtException;->errorClass:I

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ",errorCode="

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v2, p0, Ljcifs/netbios/NbtException;->errorCode:I

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ",errorString="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, Ljcifs/netbios/NbtException;->errorClass:I

    .line 32
    iget v3, p0, Ljcifs/netbios/NbtException;->errorCode:I

    .line 34
    invoke-static {v2, v3}, Ljcifs/netbios/NbtException;->getErrorString(II)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method
