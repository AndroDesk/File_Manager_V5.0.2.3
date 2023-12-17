.class public Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;
.super Ljcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarDnsDomainInfo"
.end annotation


# instance fields
.field public dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

.field public dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

.field public domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

.field public name:Ljcifs/dcerpc/rpc$unicode_string;

.field public sid:Ljcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 15

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 8
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Ljcifs/dcerpc/rpc$unicode_string;

    .line 14
    invoke-direct {v1}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 17
    iput-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 19
    :cond_12
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 21
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 24
    move-result v2

    .line 25
    int-to-short v2, v2

    .line 26
    iput-short v2, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 28
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 30
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 33
    move-result v2

    .line 34
    int-to-short v2, v2

    .line 35
    iput-short v2, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 37
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 44
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 46
    if-nez v2, :cond_36

    .line 48
    new-instance v2, Ljcifs/dcerpc/rpc$unicode_string;

    .line 50
    invoke-direct {v2}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 53
    iput-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 55
    :cond_36
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 57
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 60
    move-result v3

    .line 61
    int-to-short v3, v3

    .line 62
    iput-short v3, v2, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 64
    iget-object v2, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 66
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 69
    move-result v3

    .line 70
    int-to-short v3, v3

    .line 71
    iput-short v3, v2, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 73
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 76
    move-result v2

    .line 77
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 80
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 82
    if-nez v3, :cond_5a

    .line 84
    new-instance v3, Ljcifs/dcerpc/rpc$unicode_string;

    .line 86
    invoke-direct {v3}, Ljcifs/dcerpc/rpc$unicode_string;-><init>()V

    .line 89
    iput-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 91
    :cond_5a
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 93
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 96
    move-result v4

    .line 97
    int-to-short v4, v4

    .line 98
    iput-short v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 100
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 102
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 105
    move-result v4

    .line 106
    int-to-short v4, v4

    .line 107
    iput-short v4, v3, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 109
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 112
    move-result v3

    .line 113
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 116
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 118
    if-nez v0, :cond_7e

    .line 120
    new-instance v0, Ljcifs/dcerpc/rpc$uuid_t;

    .line 122
    invoke-direct {v0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    .line 125
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 127
    :cond_7e
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 129
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 132
    move-result v4

    .line 133
    iput v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 135
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 137
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 140
    move-result v4

    .line 141
    int-to-short v4, v4

    .line 142
    iput-short v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 144
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 146
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 149
    move-result v4

    .line 150
    int-to-short v4, v4

    .line 151
    iput-short v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 153
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 155
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 158
    move-result v4

    .line 159
    int-to-byte v4, v4

    .line 160
    iput-byte v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 162
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 164
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 167
    move-result v4

    .line 168
    int-to-byte v4, v4

    .line 169
    iput-byte v4, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 171
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 173
    const/4 v4, 0x6

    .line 174
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 177
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 180
    move-result v5

    .line 181
    const v6, 0xffff

    .line 184
    const-string v7, "invalid array conformance"

    .line 186
    const/4 v8, 0x0

    .line 187
    if-eqz v1, :cond_fc

    .line 189
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 191
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 194
    move-result v1

    .line 195
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 198
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 201
    move-result v9

    .line 202
    iget v10, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 204
    mul-int/lit8 v11, v9, 0x2

    .line 206
    invoke-virtual {p1, v11}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 209
    iget-object v11, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 211
    iget-object v12, v11, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 213
    if-nez v12, :cond_e5

    .line 215
    if-ltz v1, :cond_df

    .line 217
    if-gt v1, v6, :cond_df

    .line 219
    new-array v1, v1, [S

    .line 221
    iput-object v1, v11, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 223
    goto :goto_e5

    .line 224
    :cond_df
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 226
    invoke-direct {p1, v7}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 229
    throw p1

    .line 230
    :cond_e5
    :goto_e5
    invoke-virtual {p1, v10}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 233
    move-result-object v1

    .line 234
    move p1, v8

    .line 235
    :goto_ea
    if-lt p1, v9, :cond_ee

    .line 237
    move-object p1, v1

    .line 238
    goto :goto_fc

    .line 239
    :cond_ee
    iget-object v10, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 241
    iget-object v10, v10, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 243
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 246
    move-result v11

    .line 247
    int-to-short v11, v11

    .line 248
    aput-short v11, v10, p1

    .line 250
    add-int/lit8 p1, p1, 0x1

    .line 252
    goto :goto_ea

    .line 253
    :cond_fc
    :goto_fc
    if-eqz v2, :cond_13e

    .line 255
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 257
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 260
    move-result v1

    .line 261
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 264
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 267
    move-result v2

    .line 268
    iget v9, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 270
    mul-int/lit8 v10, v2, 0x2

    .line 272
    invoke-virtual {p1, v10}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 275
    iget-object v10, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 277
    iget-object v11, v10, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 279
    if-nez v11, :cond_127

    .line 281
    if-ltz v1, :cond_121

    .line 283
    if-gt v1, v6, :cond_121

    .line 285
    new-array v1, v1, [S

    .line 287
    iput-object v1, v10, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 289
    goto :goto_127

    .line 290
    :cond_121
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 292
    invoke-direct {p1, v7}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 295
    throw p1

    .line 296
    :cond_127
    :goto_127
    invoke-virtual {p1, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 299
    move-result-object v1

    .line 300
    move p1, v8

    .line 301
    :goto_12c
    if-lt p1, v2, :cond_130

    .line 303
    move-object p1, v1

    .line 304
    goto :goto_13e

    .line 305
    :cond_130
    iget-object v9, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 307
    iget-object v9, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 309
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 312
    move-result v10

    .line 313
    int-to-short v10, v10

    .line 314
    aput-short v10, v9, p1

    .line 316
    add-int/lit8 p1, p1, 0x1

    .line 318
    goto :goto_12c

    .line 319
    :cond_13e
    :goto_13e
    if-eqz v3, :cond_180

    .line 321
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 323
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 326
    move-result v1

    .line 327
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 330
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 333
    move-result v2

    .line 334
    iget v3, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 336
    mul-int/lit8 v9, v2, 0x2

    .line 338
    invoke-virtual {p1, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 341
    iget-object v9, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 343
    iget-object v10, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 345
    if-nez v10, :cond_169

    .line 347
    if-ltz v1, :cond_163

    .line 349
    if-gt v1, v6, :cond_163

    .line 351
    new-array v1, v1, [S

    .line 353
    iput-object v1, v9, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 355
    goto :goto_169

    .line 356
    :cond_163
    new-instance p1, Ljcifs/dcerpc/ndr/NdrException;

    .line 358
    invoke-direct {p1, v7}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    .line 361
    throw p1

    .line 362
    :cond_169
    :goto_169
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 365
    move-result-object v1

    .line 366
    move p1, v8

    .line 367
    :goto_16e
    if-lt p1, v2, :cond_172

    .line 369
    move-object p1, v1

    .line 370
    goto :goto_180

    .line 371
    :cond_172
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 373
    iget-object v3, v3, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 375
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 378
    move-result v6

    .line 379
    int-to-short v6, v6

    .line 380
    aput-short v6, v3, p1

    .line 382
    add-int/lit8 p1, p1, 0x1

    .line 384
    goto :goto_16e

    .line 385
    :cond_180
    :goto_180
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 387
    iget-object v2, v1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 389
    if-nez v2, :cond_18a

    .line 391
    new-array v2, v4, [B

    .line 393
    iput-object v2, v1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 395
    :cond_18a
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 398
    move-result-object p1

    .line 399
    :goto_18e
    if-lt v8, v4, :cond_1a5

    .line 401
    if-eqz v5, :cond_1a4

    .line 403
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 405
    if-nez v0, :cond_19d

    .line 407
    new-instance v0, Ljcifs/dcerpc/rpc$sid_t;

    .line 409
    invoke-direct {v0}, Ljcifs/dcerpc/rpc$sid_t;-><init>()V

    .line 412
    iput-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 414
    :cond_19d
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 416
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 418
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 421
    :cond_1a4
    return-void

    .line 422
    :cond_1a5
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 424
    iget-object v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 426
    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    .line 429
    move-result v1

    .line 430
    int-to-byte v1, v1

    .line 431
    aput-byte v1, v0, v8

    .line 433
    add-int/lit8 v8, v8, 0x1

    .line 435
    goto :goto_18e
.end method

.method public encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .registers 8

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 5
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 7
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 9
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 12
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 14
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 16
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 19
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 21
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 27
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 29
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 31
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 34
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 36
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 38
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 41
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 43
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 45
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 48
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 50
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 52
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 55
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 57
    iget-short v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 59
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 62
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 64
    iget-object v0, v0, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 66
    invoke-virtual {p1, v0, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 69
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 71
    iget v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 73
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 76
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 78
    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 80
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 83
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 85
    iget-short v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 87
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 90
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 92
    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 94
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 97
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 99
    iget-byte v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 101
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 104
    iget v0, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 106
    const/4 v2, 0x6

    .line 107
    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 110
    iget-object v3, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 112
    invoke-virtual {p1, v3, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 115
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 117
    iget-object v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 119
    const/4 v4, 0x0

    .line 120
    if-eqz v3, :cond_a4

    .line 122
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 124
    iget-short v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 126
    div-int/lit8 v3, v3, 0x2

    .line 128
    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 130
    div-int/lit8 v1, v1, 0x2

    .line 132
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 135
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 138
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 141
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 143
    const/4 v5, 0x2

    .line 144
    invoke-static {v3, v5, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 147
    move-result-object v1

    .line 148
    move p1, v4

    .line 149
    :goto_94
    if-lt p1, v3, :cond_98

    .line 151
    move-object p1, v1

    .line 152
    goto :goto_a4

    .line 153
    :cond_98
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->name:Ljcifs/dcerpc/rpc$unicode_string;

    .line 155
    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 157
    aget-short v5, v5, p1

    .line 159
    invoke-virtual {v1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 162
    add-int/lit8 p1, p1, 0x1

    .line 164
    goto :goto_94

    .line 165
    :cond_a4
    :goto_a4
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 167
    iget-object v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 169
    if-eqz v3, :cond_d5

    .line 171
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 173
    iget-short v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 175
    div-int/lit8 v3, v3, 0x2

    .line 177
    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 179
    div-int/lit8 v1, v1, 0x2

    .line 181
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 184
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 187
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 190
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 192
    const/4 v5, 0x2

    .line 193
    invoke-static {v3, v5, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 196
    move-result-object v1

    .line 197
    move p1, v4

    .line 198
    :goto_c5
    if-lt p1, v3, :cond_c9

    .line 200
    move-object p1, v1

    .line 201
    goto :goto_d5

    .line 202
    :cond_c9
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_domain:Ljcifs/dcerpc/rpc$unicode_string;

    .line 204
    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 206
    aget-short v5, v5, p1

    .line 208
    invoke-virtual {v1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 211
    add-int/lit8 p1, p1, 0x1

    .line 213
    goto :goto_c5

    .line 214
    :cond_d5
    :goto_d5
    iget-object v1, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 216
    iget-object v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 218
    if-eqz v3, :cond_106

    .line 220
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 222
    iget-short v3, v1, Ljcifs/dcerpc/rpc$unicode_string;->length:S

    .line 224
    div-int/lit8 v3, v3, 0x2

    .line 226
    iget-short v1, v1, Ljcifs/dcerpc/rpc$unicode_string;->maximum_length:S

    .line 228
    div-int/lit8 v1, v1, 0x2

    .line 230
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 233
    invoke-virtual {p1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 236
    invoke-virtual {p1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 239
    iget v1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 241
    const/4 v5, 0x2

    .line 242
    invoke-static {v3, v5, p1, v1}, Lf0/e;->j(IILjcifs/dcerpc/ndr/NdrBuffer;I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 245
    move-result-object v1

    .line 246
    move p1, v4

    .line 247
    :goto_f6
    if-lt p1, v3, :cond_fa

    .line 249
    move-object p1, v1

    .line 250
    goto :goto_106

    .line 251
    :cond_fa
    iget-object v5, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->dns_forest:Ljcifs/dcerpc/rpc$unicode_string;

    .line 253
    iget-object v5, v5, Ljcifs/dcerpc/rpc$unicode_string;->buffer:[S

    .line 255
    aget-short v5, v5, p1

    .line 257
    invoke-virtual {v1, v5}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 260
    add-int/lit8 p1, p1, 0x1

    .line 262
    goto :goto_f6

    .line 263
    :cond_106
    :goto_106
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->derive(I)Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 266
    move-result-object p1

    .line 267
    :goto_10a
    if-lt v4, v2, :cond_116

    .line 269
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->sid:Ljcifs/dcerpc/rpc$sid_t;

    .line 271
    if-eqz v0, :cond_115

    .line 273
    iget-object p1, p1, Ljcifs/dcerpc/ndr/NdrBuffer;->deferred:Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 275
    invoke-virtual {v0, p1}, Ljcifs/dcerpc/rpc$sid_t;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 278
    :cond_115
    return-void

    .line 279
    :cond_116
    iget-object v0, p0, Ljcifs/dcerpc/msrpc/lsarpc$LsarDnsDomainInfo;->domain_guid:Ljcifs/dcerpc/rpc$uuid_t;

    .line 281
    iget-object v0, v0, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 283
    aget-byte v0, v0, v4

    .line 285
    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 288
    add-int/lit8 v4, v4, 0x1

    .line 290
    goto :goto_10a
.end method
